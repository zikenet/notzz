import 'package:flutter/material.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:notzz/presentation/notes/widgets/favorite_button.dart';
import 'package:notzz/presentation/notes/widgets/quill_controller_hook.dart';
import 'package:notzz/presentation/notes/widgets/card_scroll_controller_hook.dart';

class NoteCard extends HookWidget {
  const NoteCard({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context) {
    final quillController = useQuilController(note: note);
    final scrollController = useScrollControllerForCard();

    return GestureDetector(
      child: Column(
        children: [
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0.5,
              clipBehavior: Clip.hardEdge,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    // Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    // mainAxisSize: MainAxisSize.min,
                    // children: [
                    // const FavoriteButton(),
                    // const SizedBox(height: 8),
                    QuillEditor(
                  configurations: QuillEditorConfigurations(
                    scrollable: false,
                    controller: quillController,
                    enableInteractiveSelection: false,
                    autoFocus: true,
                    showCursor: false,
                  ),
                  focusNode: FocusNode(),
                  scrollController: scrollController,
                ),
                // ],
                // ),
              ),
            ),
          ),
          Text(
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
        ],
      ),
    );
  }
}
