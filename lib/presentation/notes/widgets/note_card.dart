import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notzz/domain/note/note.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:notzz/presentation/notes/widgets/card_scroll_controller_hook.dart';
import 'package:notzz/presentation/notes/widgets/quill_controller_hook.dart';

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
                  const StarButton(),
                ],
              ),
              const SizedBox(height: 8),
              Text(note.body.getOrCrash()),
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

class StarButton extends StatefulWidget {
  const StarButton({super.key});

  @override
  State<StarButton> createState() => _StarButtonState();
}

class _StarButtonState extends State<StarButton> {
  bool state = false;
  late final ColorScheme _colorScheme = Theme.of(context).colorScheme;

  Icon get icon {
    final IconData iconData = state ? Icons.star : Icons.star_outline;

    return Icon(
      iconData,
      color: Colors.grey,
      size: 25,
    );
  }

  void _toggle() {
    setState(() {
      state = !state;
    });
  }

  double get turns => state ? 1 : 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: turns,
      curve: Curves.decelerate,
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () => _toggle(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: icon,
        ),
      ),
    );
  }
}
