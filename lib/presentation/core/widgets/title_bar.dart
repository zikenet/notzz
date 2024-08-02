import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:notzz/presentation/core/custom_paints/splash_paint.dart';
import 'package:notzz/presentation/core/widgets/title_field.dart';

class TitleBar extends HookWidget implements PreferredSizeWidget {
  final String title;
  final String formContent;
  final List<Widget> operations;
  final double height;
  final void Function(String) onChangeHandler;
  const TitleBar({
    super.key,
    required this.title,
    required this.formContent,
    required this.operations,
    required this.height,
    required this.onChangeHandler,
  });

  @override
  Size get preferredSize => const Size.fromHeight(65.0);

  @override
  Widget build(BuildContext context) {
    final isEditMode = useState(false);
    final rippleStartX = useState(0.0);
    final rippleStartY = useState(0.0);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );
    final Animation animation = Tween(begin: 0.0, end: 1.0).animate(controller);

    controller.addStatusListener((animationStatus) {
      if (animationStatus == AnimationStatus.completed) {
        isEditMode.value = true;
      }
    });

    return Stack(
      children: [
        SafeArea(
          child: AppBar(
            centerTitle: false,
            titleSpacing: 0,
            title: GestureDetector(
              onTapUp: (details) {
                rippleStartX.value = details.globalPosition.dx;
                rippleStartY.value = details.globalPosition.dy;
                controller.forward();
              },
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            actions: operations,
          ),
        ),
        AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return CustomPaint(
              painter: SplashPainter(
                containerHeight: height,
                center: Offset(rippleStartX.value, rippleStartY.value),
                // increase radius in % from 0% to 100% of screenWidth
                radius: animation.value * MediaQuery.sizeOf(context).width,
                context: context,
              ),
            );
          },
        ),
        isEditMode.value
            ? TitleField(
                onChangeHandler: onChangeHandler,
                title: formContent,
                isEditMode: isEditMode,
                controller: controller,
              )
            : Container()
      ],
    );
  }
}
