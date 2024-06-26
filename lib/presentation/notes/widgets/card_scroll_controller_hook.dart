import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ScrollController useScrollControllerForCard() {
  final ScrollController scrollController =
      ScrollController(keepScrollOffset: false);
  return scrollController;
}

class _CardScrollControllerHook extends Hook<ScrollController> {
  const _CardScrollControllerHook();

  @override
  _CardScrollControllerHookState createState() =>
      _CardScrollControllerHookState();
}

class _CardScrollControllerHookState
    extends HookState<ScrollController, _CardScrollControllerHook> {
  late ScrollController _scrollController;

  @override
  void initHook() {
    _scrollController = ScrollController(keepScrollOffset: false);
  }

  // Build doesn't return a Widget but rather the ScrollController
  @override
  ScrollController build(BuildContext context) => _scrollController;

  // This is what we came here for
  @override
  void dispose() => _scrollController.dispose();
}
