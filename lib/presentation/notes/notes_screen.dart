import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kt_dart/collection.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:notzz/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:notzz/presentation/core/animations/animations.dart';
import 'package:notzz/presentation/core/widgets/destination.dart';
import 'package:notzz/presentation/core/widgets/simple_drawer_header.dart';
import 'package:notzz/presentation/notes/widgets/note_card.dart';
import 'package:notzz/presentation/core/widgets/simple_appbar.dart';
import 'package:notzz/presentation/core/widgets/simple_header.dart';
import 'package:notzz/presentation/core/widgets/simple_search_field.dart';
import 'package:notzz/applicaiton/note/note_watcher/note_watcher_bloc.dart';
import 'package:notzz/presentation/core/widgets/simple_navigation_rail.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          getIt<NoteWatcherBloc>()..add(const NoteWatcherEvent.watchAll()),
      child: SimpleHeader(
        onActionButton: () {},
        body: BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const SpinKitSpinningLines(
                color: Colors.black,
                size: 100.0,
              ),
              loading: (_) => const SpinKitSpinningLines(
                color: Colors.black,
                size: 100.0,
              ),
              success: (state) {
                return NoteBody(
                  notes: state.notes,
                );
                // return Row(
                //   children: [
                //     if (width > 600)
                //       const SimpleNavigationRail(
                //         backgroundColor: Color(0XFF424242),
                //         selectedIndex: 0,
                //       ),
                //     Expanded(
                //       child: CustomScrollView(
                //         physics: const BouncingScrollPhysics(),
                //         slivers: [
                //           SimpleAppBar(
                //             title: 'All Notes',
                //             item: 'notes',
                //             amount: state.notes.size,
                //           ),
                //           const SimpleSearchField(),
                //           SliverList.builder(
                //             // gridDelegate:
                //             //     const SliverGridDelegateWithMaxCrossAxisExtent(
                //             // maxCrossAxisExtent: 250,
                //             // ),
                //             itemCount: state.notes.size,
                //             itemBuilder: (context, index) {
                //               final note = state.notes[index];
                //               if (note.failureOption.isSome()) {
                //                 return Container(
                //                   color: Colors.red,
                //                   width: 100,
                //                   height: 100,
                //                 );
                //               } else {
                //                 return NoteCard(note: note);
                //               }
                //             },
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // );
              },
              failure: (state) {
                return Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                );
              },
            );
          },
        ),
      ),
    );
  }
}

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
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) => Row(
        children: [
          SimpleNavigationRail(
            railAnimation: railAnimation,
            backgroundColor: Colors.green,
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
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
