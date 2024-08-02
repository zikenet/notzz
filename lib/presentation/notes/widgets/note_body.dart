import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:notzz/presentation/core/transitions/editor_transition.dart';
import 'package:notzz/presentation/core/widgets/simple_header.dart';
import 'package:notzz/presentation/core/animations/animations.dart';
import 'package:notzz/presentation/core/widgets/simple_appbar.dart';
import 'package:notzz/presentation/core/widgets/simple_search_field.dart';
import 'package:notzz/presentation/core/widgets/simple_navigation_rail.dart';
import 'package:notzz/presentation/notes/widgets/note_card.dart';
import 'package:notzz/presentation/notes/widgets/note_form.dart';

class NoteBody extends HookWidget {
  const NoteBody({super.key, required this.notes});

  final KtList<Note> notes;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1000),
      reverseDuration: const Duration(milliseconds: 1250),
      initialValue: 0,
      // vsync: this,
    );

    final railAnimation = RailAnimation(parent: controller);
    final railFabAnimation = RailFabAnimation(parent: controller);
    final BarAnimation barAnimation = BarAnimation(parent: controller);

    int selectedIndex = 0;

    final double width = MediaQuery.sizeOf(useContext()).width;
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

    return SimpleHeader(
      barAnimaiton: barAnimation,
      onActionButton: () {},
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, child) => Row(
          children: [
            SimpleNavigationRail(
              railAnimation: railAnimation,
              selectedIndex: selectedIndex,
              railFabAnimation: railFabAnimation,
              backgroundColor: const Color(0xFF424242),
            ),
            Expanded(
              child: EditorTransition(
                animation: railAnimation,
                one: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SimpleAppBar(
                      title: 'All Notes',
                      item: 'notes',
                      amount: notes.size,
                    ),
                    const SimpleSearchField(),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      sliver: SliverList.builder(
                        // SliverGrid.builder(
                        //   gridDelegate:
                        //       const SliverGridDelegateWithMaxCrossAxisExtent(
                        //     maxCrossAxisExtent: 235,
                        //     mainAxisSpacing: 10,
                        //   ),
                        itemCount: notes.size,
                        itemBuilder: (context, index) {
                          final note = notes[index];
                          if (note.failureOption.isSome()) {
                            return Container(
                              color: Colors.green,
                              width: 100,
                              height: 100,
                            );
                          } else {
                            // return Container(
                            //   height: 100,
                            //   width: 100,
                            //   color: Colors.blue,
                            // );
                            return NoteCard(note: note);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                two: const NoteForm(),
              ),
            )
          ],
        ),
      ),
    );
  }
  // @override

  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }
}
