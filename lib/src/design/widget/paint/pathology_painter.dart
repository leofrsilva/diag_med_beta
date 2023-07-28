import 'dart:ui' as ui;

import 'package:flutter/material.dart';

// https://fluttershapemaker.com/
class PathologyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4999000, size.height * 0.4372592);
    path_0.cubicTo(
        size.width * 0.4797000,
        size.height * 0.4372592,
        size.width * 0.4633761,
        size.height * 0.4535831,
        size.width * 0.4633761,
        size.height * 0.4737831);
    path_0.lineTo(size.width * 0.4633761, size.height * 0.5221394);
    path_0.lineTo(size.width * 0.4158352, size.height * 0.5221394);
    path_0.cubicTo(
        size.width * 0.3956352,
        size.height * 0.5221394,
        size.width * 0.3793127,
        size.height * 0.5384634,
        size.width * 0.3793127,
        size.height * 0.5586634);
    path_0.cubicTo(
        size.width * 0.3793127,
        size.height * 0.5788634,
        size.width * 0.3956352,
        size.height * 0.5951859,
        size.width * 0.4158352,
        size.height * 0.5951859);
    path_0.lineTo(size.width * 0.4633761, size.height * 0.5951859);
    path_0.lineTo(size.width * 0.4633761, size.height * 0.6427282);
    path_0.cubicTo(
        size.width * 0.4633761,
        size.height * 0.6629282,
        size.width * 0.4797000,
        size.height * 0.6792507,
        size.width * 0.4999000,
        size.height * 0.6792507);
    path_0.cubicTo(
        size.width * 0.5201000,
        size.height * 0.6792507,
        size.width * 0.5364225,
        size.height * 0.6629282,
        size.width * 0.5364225,
        size.height * 0.6427282);
    path_0.lineTo(size.width * 0.5364225, size.height * 0.5951859);
    path_0.lineTo(size.width * 0.5839648, size.height * 0.5951859);
    path_0.cubicTo(
        size.width * 0.6041648,
        size.height * 0.5951859,
        size.width * 0.6204873,
        size.height * 0.5788634,
        size.width * 0.6204873,
        size.height * 0.5586634);
    path_0.cubicTo(
        size.width * 0.6204873,
        size.height * 0.5384634,
        size.width * 0.6041648,
        size.height * 0.5221394,
        size.width * 0.5839648,
        size.height * 0.5221394);
    path_0.lineTo(size.width * 0.5364225, size.height * 0.5221394);
    path_0.lineTo(size.width * 0.5364225, size.height * 0.4737831);
    path_0.cubicTo(
        size.width * 0.5364225,
        size.height * 0.4535831,
        size.width * 0.5201000,
        size.height * 0.4372592,
        size.width * 0.4999000,
        size.height * 0.4372592);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.3744099, size.height * 0.5839986),
      Offset(size.width * 0.6325577, size.height * 0.5632000),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6404831, 0);
    path_1.lineTo(size.width * 0.3595197, 0);
    path_1.lineTo(size.width * 0.3595197, size.height * 0.09283817);
    path_1.lineTo(size.width * 0.6404831, size.height * 0.09283817);
    path_1.lineTo(size.width * 0.6404831, 0);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.3538085, size.height * 0.05629549),
      Offset(size.width * 0.6394014, size.height * -1.357646),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.7537225, size.height * 0.2587254);
    path_2.lineTo(size.width * 0.6402775, size.height * 0.1334452);
    path_2.lineTo(size.width * 0.3595183, size.height * 0.1334452);
    path_2.lineTo(size.width * 0.2460718, size.height * 0.2587254);
    path_2.cubicTo(
        size.width * 0.2405620,
        size.height * 0.2658676,
        size.width * 0.2372972,
        size.height * 0.2738254,
        size.width * 0.2372972,
        size.height * 0.2834141);
    path_2.lineTo(size.width * 0.2372972, size.height * 0.9610310);
    path_2.cubicTo(
        size.width * 0.2372972,
        size.height * 0.9824563,
        size.width * 0.2548451,
        size.height * 1.000003,
        size.width * 0.2762690,
        size.height * 1.000003);
    path_2.lineTo(size.width * 0.7237296, size.height * 1.000003);
    path_2.cubicTo(
        size.width * 0.7451535,
        size.height * 1.000003,
        size.width * 0.7627014,
        size.height * 0.9824563,
        size.width * 0.7627014,
        size.height * 0.9610310);
    path_2.lineTo(size.width * 0.7627014, size.height * 0.2832113);
    path_2.cubicTo(
        size.width * 0.7624972,
        size.height * 0.2746408,
        size.width * 0.7594366,
        size.height * 0.2658676,
        size.width * 0.7537225,
        size.height * 0.2587254);
    path_2.close();
    path_2.moveTo(size.width * 0.4998972, size.height * 0.7863732);
    path_2.cubicTo(
        size.width * 0.4078746,
        size.height * 0.7863732,
        size.width * 0.3323803,
        size.height * 0.6847606,
        size.width * 0.3323803,
        size.height * 0.5586648);
    path_2.cubicTo(
        size.width * 0.3323803,
        size.height * 0.4333845,
        size.width * 0.4070592,
        size.height * 0.3309563,
        size.width * 0.4998972,
        size.height * 0.3309563);
    path_2.cubicTo(
        size.width * 0.5919197,
        size.height * 0.3309563,
        size.width * 0.6674141,
        size.height * 0.4325676,
        size.width * 0.6674141,
        size.height * 0.5586648);
    path_2.cubicTo(
        size.width * 0.6674141,
        size.height * 0.6839451,
        size.width * 0.5919197,
        size.height * 0.7863732,
        size.width * 0.4998972,
        size.height * 0.7863732);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.2266183, size.height * 0.6589113),
      Offset(size.width * 0.7912887, size.height * 0.6312338),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
