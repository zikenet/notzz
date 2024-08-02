import 'package:flutter/material.dart';

class SplashPainter extends CustomPainter {
  final Offset center;
  final double radius, containerHeight;
  final BuildContext context;

  Color? color;
  double? statusBarHeight, screenWidth;

  SplashPainter({
    required this.context,
    required this.containerHeight,
    required this.center,
    required this.radius,
  }) {
    color = Colors.grey;
    statusBarHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint circlePainter = Paint();

    circlePainter.color = color!;
    canvas.clipRect(
        Rect.fromLTWH(0, 0, screenWidth!, containerHeight + statusBarHeight!));
    canvas.drawCircle(center, radius, circlePainter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
