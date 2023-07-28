import 'dart:ui' as ui;
import 'package:flutter/material.dart';

// https://fluttershapemaker.com/
class MedicinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();

    path_0.moveTo(size.width * 0.5968230, 0);
    path_0.lineTo(size.width * 0.1421297, 0);
    path_0.lineTo(size.width * 0.1421297, size.height * 0.08244892);
    path_0.lineTo(size.width * 0.5968230, size.height * 0.08244892);
    path_0.lineTo(size.width * 0.5968230, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.1328877, size.height * 0.04999568),
      Offset(size.width * 0.5415176, size.height * -13.21832),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7364135, size.height * 0.3840797);
    path_1.cubicTo(
        size.width * 0.7364135,
        size.height * 0.3840797,
        size.width * 0.5666176,
        size.height * 0.6102014,
        size.width * 0.5666176,
        size.height * 0.7681608);
    path_1.cubicTo(
        size.width * 0.5666176,
        size.height * 0.8610176,
        size.width * 0.6427392,
        size.height * 0.9363243,
        size.width * 0.7364135,
        size.height * 0.9363243);
    path_1.cubicTo(
        size.width * 0.8300865,
        size.height * 0.9363243,
        size.width * 0.9015149,
        size.height * 0.8610176,
        size.width * 0.9062095,
        size.height * 0.7681608);
    path_1.cubicTo(
        size.width * 0.9135568,
        size.height * 0.6238757,
        size.width * 0.7364135,
        size.height * 0.3840797,
        size.width * 0.7364135,
        size.height * 0.3840797);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.5597108, size.height * 0.7189514),
      Offset(size.width * 0.9248959, size.height * 0.7007851),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5174351, size.height * 0.1230601);
    path_2.lineTo(size.width * 0.2221284, size.height * 0.1230601);
    path_2.lineTo(size.width * 0.2221284, size.height * 0.1746932);
    path_2.lineTo(size.width * 0.5174351, size.height * 0.1746932);
    path_2.lineTo(size.width * 0.5174351, size.height * 0.1230601);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.2161257, size.height * 0.1543689),
        Offset(size.width * 0.4782324, size.height * 0.03318122), [
      const Color(0xff368179).withOpacity(1),
      const Color(0xff11AEBA).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5253959, size.height * 0.7681622);
    path_3.cubicTo(
        size.width * 0.5253959,
        size.height * 0.6618351,
        size.width * 0.5929459,
        size.height * 0.5308149,
        size.width * 0.6451919,
        size.height * 0.4467338);
    path_3.lineTo(size.width * 0.6451919, size.height * 0.3697946);
    path_3.cubicTo(
        size.width * 0.6451919,
        size.height * 0.3602027,
        size.width * 0.6419257,
        size.height * 0.3516311,
        size.width * 0.6364162,
        size.height * 0.3444892);
    path_3.lineTo(size.width * 0.5331500, size.height * 0.2151014);
    path_3.lineTo(size.width * 0.2056000, size.height * 0.2151014);
    path_3.lineTo(size.width * 0.1023342, size.height * 0.3444892);
    path_3.cubicTo(
        size.width * 0.09682392,
        size.height * 0.3516311,
        size.width * 0.09355865,
        size.height * 0.3604068,
        size.width * 0.09355865,
        size.height * 0.3697946);
    path_3.lineTo(size.width * 0.09355865, size.height * 0.9563257);
    path_3.cubicTo(
        size.width * 0.09355865,
        size.height * 0.9804068,
        size.width * 0.1131505,
        size.height * 0.9999986,
        size.width * 0.1372324,
        size.height * 0.9999986);
    path_3.lineTo(size.width * 0.6015176, size.height * 0.9999986);
    path_3.cubicTo(
        size.width * 0.6256000,
        size.height * 0.9999986,
        size.width * 0.6451919,
        size.height * 0.9804068,
        size.width * 0.6451919,
        size.height * 0.9563257);
    path_3.cubicTo(
        size.width * 0.5745784,
        size.height * 0.9222446,
        size.width * 0.5253959,
        size.height * 0.8508149,
        size.width * 0.5253959,
        size.height * 0.7681622);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.08234662, size.height * 0.6910500),
      Offset(size.width * 0.6747189, size.height * 0.6573932),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );

    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
