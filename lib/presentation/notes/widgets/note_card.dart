import 'package:flutter/material.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:notzz/presentation/notes/widgets/favorite_button.dart';

class NoteCard extends HookWidget {
  const NoteCard({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    // final quillController = useQuilController(note: note);
    // final scrollController = useScrollControllerForCard();

    return GestureDetector(
      child: Card(
        elevation: 0.5,
        clipBehavior: Clip.hardEdge,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      note.title.getOrCrash(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const FavoriteButton(),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                note.body.getOrCrash(),
                overflow: TextOverflow.ellipsis,
              ),
              // QuillEditor(
              //   configurations: QuillEditorConfigurations(
              //     controller: quillController,
              //     enableInteractiveSelection: false,
              //     autoFocus: true,
              //     showCursor: false,
              //   ),
              //   focusNode: FocusNode(),
              //   scrollController: scrollController,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
