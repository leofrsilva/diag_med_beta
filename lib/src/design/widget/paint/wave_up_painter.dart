import 'package:flutter/material.dart';

class WaveUpPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -2.217290, size.height * 0.3851136);
    path_0.lineTo(size.width * -2.081984, size.height * 0.3527505);
    path_0.cubicTo(
        size.width * -1.946678,
        size.height * 0.3203883,
        size.width * -1.683579,
        size.height * 0.2394825,
        size.width * -1.412967,
        size.height * 0.3851136);
    path_0.cubicTo(
        size.width * -1.142355,
        size.height * 0.5307447,
        size.width * -0.8792570,
        size.height * 0.8705505,
        size.width * -0.6086449,
        size.height * 0.8705505);
    path_0.cubicTo(
        size.width * -0.3380327,
        size.height * 0.8705505,
        size.width * -0.07493551,
        size.height * 0.5307447,
        size.width * 0.1956776,
        size.height * 0.4822010);
    path_0.cubicTo(
        size.width * 0.4662921,
        size.height * 0.4498379,
        size.width * 0.7293879,
        size.height * 0.7249194,
        size.width * 0.8646939,
        size.height * 0.8705505);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, size.height * -0.6504854);
    path_0.lineTo(size.width * 0.8646939, size.height * -0.6504854);
    path_0.cubicTo(
        size.width * 0.7293879,
        size.height * -0.6504854,
        size.width * 0.4662921,
        size.height * -0.6504854,
        size.width * 0.1956776,
        size.height * -0.6504854);
    path_0.cubicTo(
        size.width * -0.07493551,
        size.height * -0.6504854,
        size.width * -0.3380327,
        size.height * -0.6504854,
        size.width * -0.6086449,
        size.height * -0.6504854);
    path_0.cubicTo(
        size.width * -0.8792570,
        size.height * -0.6504854,
        size.width * -1.142355,
        size.height * -0.6504854,
        size.width * -1.412967,
        size.height * -0.6504854);
    path_0.cubicTo(
        size.width * -1.683579,
        size.height * -0.6504854,
        size.width * -1.946678,
        size.height * -0.6504854,
        size.width * -2.081984,
        size.height * -0.6504854);
    path_0.lineTo(size.width * -2.217290, size.height * -0.6504854);
    path_0.lineTo(size.width * -2.217290, size.height * 0.3851136);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff368179).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
