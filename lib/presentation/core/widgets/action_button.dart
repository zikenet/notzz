import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onTapHandler;
  final Widget child;
  const ActionButton({
    super.key,
    required this.onTapHandler,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onTapHandler,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }
}
