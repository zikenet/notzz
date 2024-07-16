import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TitleField extends HookWidget implements PreferredSizeWidget {
  final ValueNotifier<bool> isEditMode;
  final AnimationController controller;
  final void Function(String) onChangeHandler;
  final String? title;

  const TitleField({
    super.key,
    this.title,
    required this.isEditMode,
    required this.controller,
    required this.onChangeHandler,
  });

  @override
  Size get preferredSize => const Size.fromHeight(65.0);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    if (title != null) {
      textEditingController.text = title!;
    }
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  isEditMode.value = !isEditMode.value;
                  controller.reverse();
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: TextFormField(
                    autofocus: true,
                    controller: textEditingController,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    onChanged: onChangeHandler,
                    decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: "Title...",
                      hintStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 18,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
