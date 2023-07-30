import 'package:flutter/material.dart';

class WaveBackPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -1.603286, size.height * 0.6274505);
    path_0.lineTo(size.width * -1.493803, size.height * 0.6078430);
    path_0.cubicTo(
        size.width * -1.384319,
        size.height * 0.5882355,
        size.width * -1.171432,
        size.height * 0.5392161,
        size.width * -0.9524648,
        size.height * 0.6274505);
    path_0.cubicTo(
        size.width * -0.7334977,
        size.height * 0.7156860,
        size.width * -0.5206103,
        size.height * 0.9215688,
        size.width * -0.3016432,
        size.height * 0.9215688);
    path_0.cubicTo(
        size.width * -0.08267535,
        size.height * 0.9215688,
        size.width * 0.1302103,
        size.height * 0.7156860,
        size.width * 0.3491784,
        size.height * 0.6862742);
    path_0.cubicTo(
        size.width * 0.5681455,
        size.height * 0.6666667,
        size.width * 0.7810329,
        size.height * 0.8333333,
        size.width * 0.8905164,
        size.height * 0.9215688);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width * 0.8905164, 0);
    path_0.cubicTo(size.width * 0.7810329, 0, size.width * 0.5681455, 0,
        size.width * 0.3491784, 0);
    path_0.cubicTo(size.width * 0.1302103, 0, size.width * -0.08267535, 0,
        size.width * -0.3016432, 0);
    path_0.cubicTo(size.width * -0.5206103, 0, size.width * -0.7334977, 0,
        size.width * -0.9524648, 0);
    path_0.cubicTo(size.width * -1.171432, 0, size.width * -1.384319, 0,
        size.width * -1.493803, 0);
    path_0.lineTo(size.width * -1.603286, 0);
    path_0.lineTo(size.width * -1.603286, size.height * 0.6274505);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff11AEBA).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
