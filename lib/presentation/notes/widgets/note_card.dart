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
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 0.5,
            clipBehavior: Clip.hardEdge,
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          note.title.getOrCrash(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 1.5,
                          ),
                        ),
                      ),
                      const FavoriteButton(),
                    ],
                  ),
                  QuillEditor(
                    configurations: QuillEditorConfigurations(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      scrollPhysics: const NeverScrollableScrollPhysics(),
                      maxHeight: 150,
                      controller: quillController,
                      enableInteractiveSelection: false,
                      showCursor: false,
                    ),
                    focusNode: FocusNode(),
                    scrollController: scrollController,
                  ),
                ],
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Edited On: 10/22/2023',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            // ListTile(),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Row(
            //         children: [
            //           Expanded(
            //             child: Text(
            //               note.title.getOrCrash(),
            //               maxLines: 1,
            //               overflow: TextOverflow.ellipsis,
            //               style: const TextStyle(
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: 18,
            //                 height: 1.5,
            //               ),
            //             ),
            //           ),
            //           const FavoriteButton(),
            //         ],
            //       ),
            //       // const SizedBox(height: 8),
            //       QuillEditor(
            //         configurations: QuillEditorConfigurations(
            //           padding: const EdgeInsets.symmetric(vertical: 10),
            //           maxHeight: 100,
            //           scrollable: false,
            //           controller: quillController,
            //           enableInteractiveSelection: false,
            //           // autoFocus: true,
            //           showCursor: false,
            //         ),
            //         focusNode: FocusNode(),
            //         scrollController: scrollController,
            //       ),
            //       const Text(
            //         '2/12/2005',
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
