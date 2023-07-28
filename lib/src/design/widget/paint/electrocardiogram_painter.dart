import 'package:flutter/material.dart';

// https://fluttershapemaker.com/
class ElectrocardiogramPainter extends CustomPainter {
  Color? color;
  bool? isComplete;
  int? stop;

  ElectrocardiogramPainter({
    this.color,
    this.stop,
    this.isComplete,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();

    int range = isComplete ?? false
        ? pointersElectrocardiogram.length
        : stop ?? pointersElectrocardiogram.length;
    if (range > pointersElectrocardiogram.length) {
      range = pointersElectrocardiogram.length;
    }

    for (var i = 0; i < range; i++) {
      pointersElectrocardiogram[i].call(path_0, size);
    }
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color =
        color?.withOpacity(1.0) ?? const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

final pointersElectrocardiogram = <Function(Path, Size)>[
  (Path path, Size size) {
    path.moveTo(size.width * 0.1109786, size.height * 0.5604768);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.2968036, size.height * 0.5604768);
  },
  (Path path, Size size) {
    path.cubicTo(
        size.width * 0.3156375,
        size.height * 0.5604768,
        size.width * 0.3269375,
        size.height * 0.5521071,
        size.width * 0.3307036,
        size.height * 0.5353661);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.3934839, size.height * 0.2470000);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.5035554, size.height * 0.9078536);
  },
  (Path path, Size size) {
    path.cubicTo(
        size.width * 0.5085786,
        size.height * 0.9379875,
        size.width * 0.5550357,
        size.height * 0.9375696,
        size.width * 0.5608946,
        size.height * 0.9078536);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.6676196, size.height * 0.4077143);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.6923107, size.height * 0.5320161);
  },
  (Path path, Size size) {
    path.cubicTo(
        size.width * 0.6960786,
        size.height * 0.5512696,
        size.width * 0.7069607,
        size.height * 0.5604768,
        size.width * 0.7266304,
        size.height * 0.5604768);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.8890196, size.height * 0.5604768);
  },
  (Path path, Size size) {
    path.cubicTo(
        size.width * 0.9057589,
        size.height * 0.5604768,
        size.width * 0.9191554,
        size.height * 0.5475036,
        size.width * 0.9191554,
        size.height * 0.5311804);
  },
  (Path path, Size size) {
    path.cubicTo(
        size.width * 0.9191554,
        size.height * 0.5144393,
        size.width * 0.9061786,
        size.height * 0.5014643,
        size.width * 0.8890196,
        size.height * 0.5014643);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.7408607, size.height * 0.5014643);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.6927304, size.height * 0.2884357);
  },
  (Path path, Size size) {
    path.cubicTo(
        size.width * 0.6864518,
        size.height * 0.2595554,
        size.width * 0.6433429,
        size.height * 0.2595554,
        size.width * 0.6362286,
        size.height * 0.2896911);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.5311786, size.height * 0.7588589);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.4215250, size.height * 0.09214643);
  },
  (Path path, Size size) {
    path.cubicTo(
        size.width * 0.4169214,
        size.height * 0.06284821,
        size.width * 0.3738125,
        size.height * 0.06201250,
        size.width * 0.3671161,
        size.height * 0.09214643);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.2783893, size.height * 0.5014643);
  },
  (Path path, Size size) {
    path.lineTo(size.width * 0.1109786, size.height * 0.5014643);
  },
  (Path path, Size size) {
    path.cubicTo(
        size.width * 0.09423571,
        size.height * 0.5014643,
        size.width * 0.08084464,
        size.height * 0.5148571,
        size.width * 0.08084464,
        size.height * 0.5311804);
  },
  (Path path, Size size) {
    path.cubicTo(
        size.width * 0.08084464,
        size.height * 0.5475036,
        size.width * 0.09423571,
        size.height * 0.5604768,
        size.width * 0.1109786,
        size.height * 0.5604768);
  },
];
