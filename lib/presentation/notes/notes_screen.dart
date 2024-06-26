import 'package:notzz/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:notzz/presentation/notes/widgets/note_card.dart';
import 'package:notzz/presentation/core/widgets/simple_appbar.dart';
import 'package:notzz/presentation/core/widgets/simple_header.dart';
import 'package:notzz/presentation/core/widgets/simple_search_field.dart';
import 'package:notzz/applicaiton/note/note_watcher/note_watcher_bloc.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<NoteWatcherBloc>()
        ..add(
          const NoteWatcherEvent.watchAll(),
        ),
      child: HomeHeader(
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
                return CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SimpleAppBar(
                      title: 'All Notes',
                      item: 'notes',
                      amount: state.notes.size,
                    ),
                    const SimpleSearchField(),
                    SliverList.builder(
                      itemCount: state.notes.size,
                      itemBuilder: (context, index) {
                        final note = state.notes[index];
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
                );
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
        onActionButton: () {},
      ),
    );
  }
}
