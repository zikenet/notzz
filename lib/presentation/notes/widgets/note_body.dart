import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:notzz/presentation/notes/widgets/note_card.dart';
import 'package:notzz/presentation/core/animations/animations.dart';
import 'package:notzz/presentation/core/widgets/simple_appbar.dart';
import 'package:notzz/presentation/core/widgets/simple_search_field.dart';
import 'package:notzz/presentation/core/widgets/simple_navigation_rail.dart';

class NoteBody extends StatefulWidget {
  const NoteBody({super.key, required this.notes});

  final KtList<Note> notes;

  @override
  State<NoteBody> createState() => _NoteBodyState();
}

class _NoteBodyState extends State<NoteBody>
    with SingleTickerProviderStateMixin {
  late final controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    reverseDuration: const Duration(milliseconds: 1250),
    value: 0,
    vsync: this,
  );

  late final railAnimation = RailAnimation(parent: controller);

  int selectedIndex = 0;

  bool controllerInitialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final double width = MediaQuery.of(context).size.width;
    final AnimationStatus status = controller.status;
    if (width > 600) {
      if (status != AnimationStatus.forward &&
          status != AnimationStatus.completed) {
        controller.forward();
      }
    } else {
      if (status != AnimationStatus.reverse &&
          status != AnimationStatus.dismissed) {
        controller.reverse();
      }
    }
    if (!controllerInitialized) {
      controllerInitialized = true;
      controller.value = width > 600 ? 1 : 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) => Row(
          children: [
            SimpleNavigationRail(
              railAnimation: railAnimation,
              backgroundColor: const Color(0xFF424242),
              selectedIndex: selectedIndex,
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SimpleAppBar(
                    title: 'All Notes',
                    item: 'notes',
                    amount: widget.notes.size,
                  ),
                  const SimpleSearchField(),
                  SliverList.builder(
                    // gridDelegate:
                    //     const SliverGridDelegateWithMaxCrossAxisExtent(
                    // maxCrossAxisExtent: 250,
                    // ),
                    itemCount: widget.notes.size,
                    itemBuilder: (context, index) {
                      final note = widget.notes[index];
                      if (note.failureOption.isSome()) {
                        return Container(
                          color: Colors.red,
                          width: 100,
                          height: 100,
                        );
                      } else {
                        return NoteCard(note: note);
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
