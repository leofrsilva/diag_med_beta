import 'dart:ui' as ui;

import 'package:flutter/material.dart';

// https://fluttershapemaker.com/
class LifeBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3113284, size.height * 0.05363375);
    path_0.cubicTo(
        size.width * 0.2109373,
        size.height * 0.05486063,
        size.width * 0.1558597,
        size.height * 0.1687484,
        size.width * 0.1564448,
        size.height * 0.2314594);
    path_0.cubicTo(
        size.width * 0.1593746,
        size.height * 0.3281719,
        size.width * 0.2232418,
        size.height * 0.3938063,
        size.width * 0.3025388,
        size.height * 0.4661891);
    path_0.cubicTo(
        size.width * 0.3716791,
        size.height * 0.5291641,
        size.width * 0.4511716,
        size.height * 0.5954125,
        size.width * 0.4996090,
        size.height * 0.6911031);
    path_0.cubicTo(
        size.width * 0.4998045,
        size.height * 0.6908984,
        size.width * 0.4998045,
        size.height * 0.6906937,
        size.width * 0.5000000,
        size.height * 0.6904891);
    path_0.cubicTo(
        size.width * 0.5001955,
        size.height * 0.6906937,
        size.width * 0.5001955,
        size.height * 0.6908984,
        size.width * 0.5003910,
        size.height * 0.6911031);
    path_0.cubicTo(
        size.width * 0.5488284,
        size.height * 0.5954125,
        size.width * 0.6283209,
        size.height * 0.5291641,
        size.width * 0.6974612,
        size.height * 0.4661891);
    path_0.cubicTo(
        size.width * 0.7767582,
        size.height * 0.3938063,
        size.width * 0.8406254,
        size.height * 0.3281719,
        size.width * 0.8435552,
        size.height * 0.2314594);
    path_0.cubicTo(
        size.width * 0.8441403,
        size.height * 0.1687484,
        size.width * 0.7890627,
        size.height * 0.05486063,
        size.width * 0.6886716,
        size.height * 0.05363375);
    path_0.cubicTo(
        size.width * 0.6144537,
        size.height * 0.05261141,
        size.width * 0.5273433,
        size.height * 0.1061820,
        size.width * 0.5000000,
        size.height * 0.1920578);
    path_0.cubicTo(
        size.width * 0.4726567,
        size.height * 0.1061820,
        size.width * 0.3855463,
        size.height * 0.05261141,
        size.width * 0.3113284,
        size.height * 0.05363375);
    path_0.close();
    path_0.moveTo(size.width * 0.04492194, size.height * 0.7667563);
    path_0.lineTo(size.width * 0.04492194, size.height * 0.9998500);
    path_0.lineTo(size.width * 0.9550776, size.height * 0.9998500);
    path_0.lineTo(size.width * 0.9550776, size.height * 0.7667563);
    path_0.lineTo(size.width * 0.04492194, size.height * 0.7667563);
    path_0.close();
    path_0.moveTo(size.width * 0.08007806, size.height * 0.8035609);
    path_0.lineTo(size.width * 0.9199224, size.height * 0.8035609);
    path_0.lineTo(size.width * 0.9199224, size.height * 0.9630453);
    path_0.lineTo(size.width * 0.6523433, size.height * 0.9630453);
    path_0.lineTo(size.width * 0.6523433, size.height * 0.8403641);
    path_0.lineTo(size.width * 0.08007806, size.height * 0.8403641);
    path_0.lineTo(size.width * 0.08007806, size.height * 0.8035609);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.02642284, size.height * 0.6273969),
      Offset(size.width * 1.000497, size.height * 0.5443859),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
