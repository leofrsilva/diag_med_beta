import 'dart:ui' as ui;

import 'package:flutter/material.dart';

// https://fluttershapemaker.com/
class NotebookPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2576456, size.height * 0.1113846);
    path_0.cubicTo(
        size.width * 0.2576456,
        size.height * 0.1261126,
        size.width * 0.2457088,
        size.height * 0.1380481,
        size.width * 0.2309825,
        size.height * 0.1380481);
    path_0.lineTo(size.width * 0.1310444, size.height * 0.1380481);
    path_0.cubicTo(
        size.width * 0.1163188,
        size.height * 0.1380481,
        size.width * 0.1043809,
        size.height * 0.1261126,
        size.width * 0.1043809,
        size.height * 0.1113846);
    path_0.cubicTo(
        size.width * 0.1043809,
        size.height * 0.09666035,
        size.width * 0.1163188,
        size.height * 0.08472105,
        size.width * 0.1310444,
        size.height * 0.08472105);
    path_0.lineTo(size.width * 0.2309807, size.height * 0.08472105);
    path_0.cubicTo(
        size.width * 0.2457070,
        size.height * 0.08472228,
        size.width * 0.2576456,
        size.height * 0.09666035,
        size.width * 0.2576456,
        size.height * 0.1113846);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.1012656, size.height * 0.1170577),
      Offset(size.width * 0.2579246, size.height * 0.08065912),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2576456, size.height * 0.2409754);
    path_1.cubicTo(
        size.width * 0.2576456,
        size.height * 0.2557035,
        size.width * 0.2457088,
        size.height * 0.2676404,
        size.width * 0.2309825,
        size.height * 0.2676404);
    path_1.lineTo(size.width * 0.1310444, size.height * 0.2676404);
    path_1.cubicTo(
        size.width * 0.1163188,
        size.height * 0.2676404,
        size.width * 0.1043809,
        size.height * 0.2557035,
        size.width * 0.1043809,
        size.height * 0.2409754);
    path_1.cubicTo(
        size.width * 0.1043809,
        size.height * 0.2262526,
        size.width * 0.1163188,
        size.height * 0.2143123,
        size.width * 0.1310444,
        size.height * 0.2143123);
    path_1.lineTo(size.width * 0.2309807, size.height * 0.2143123);
    path_1.cubicTo(
        size.width * 0.2457070,
        size.height * 0.2143140,
        size.width * 0.2576456,
        size.height * 0.2262526,
        size.width * 0.2576456,
        size.height * 0.2409754);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.1012656, size.height * 0.2466491),
      Offset(size.width * 0.2579246, size.height * 0.2102509),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.2576456, size.height * 0.3705596);
    path_2.cubicTo(
        size.width * 0.2576456,
        size.height * 0.3852860,
        size.width * 0.2457088,
        size.height * 0.3972228,
        size.width * 0.2309825,
        size.height * 0.3972228);
    path_2.lineTo(size.width * 0.1310444, size.height * 0.3972228);
    path_2.cubicTo(
        size.width * 0.1163188,
        size.height * 0.3972228,
        size.width * 0.1043809,
        size.height * 0.3852860,
        size.width * 0.1043809,
        size.height * 0.3705596);
    path_2.cubicTo(
        size.width * 0.1043809,
        size.height * 0.3558333,
        size.width * 0.1163188,
        size.height * 0.3438965,
        size.width * 0.1310444,
        size.height * 0.3438965);
    path_2.lineTo(size.width * 0.2309807, size.height * 0.3438965);
    path_2.cubicTo(
        size.width * 0.2457070,
        size.height * 0.3438965,
        size.width * 0.2576456,
        size.height * 0.3558333,
        size.width * 0.2576456,
        size.height * 0.3705596);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.1012656, size.height * 0.3762316),
      Offset(size.width * 0.2579246, size.height * 0.3398333),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.2576456, size.height * 0.5001509);
    path_3.cubicTo(
        size.width * 0.2576456,
        size.height * 0.5148754,
        size.width * 0.2457088,
        size.height * 0.5268140,
        size.width * 0.2309825,
        size.height * 0.5268140);
    path_3.lineTo(size.width * 0.1310444, size.height * 0.5268140);
    path_3.cubicTo(
        size.width * 0.1163188,
        size.height * 0.5268140,
        size.width * 0.1043809,
        size.height * 0.5148754,
        size.width * 0.1043809,
        size.height * 0.5001509);
    path_3.cubicTo(
        size.width * 0.1043809,
        size.height * 0.4854246,
        size.width * 0.1163188,
        size.height * 0.4734877,
        size.width * 0.1310444,
        size.height * 0.4734877);
    path_3.lineTo(size.width * 0.2309807, size.height * 0.4734877);
    path_3.cubicTo(
        size.width * 0.2457070,
        size.height * 0.4734877,
        size.width * 0.2576456,
        size.height * 0.4854246,
        size.width * 0.2576456,
        size.height * 0.5001509);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.1012656, size.height * 0.5058246),
      Offset(size.width * 0.2579246, size.height * 0.4694246),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.2576456, size.height * 0.6297404);
    path_4.cubicTo(
        size.width * 0.2576456,
        size.height * 0.6444684,
        size.width * 0.2457088,
        size.height * 0.6564053,
        size.width * 0.2309825,
        size.height * 0.6564053);
    path_4.lineTo(size.width * 0.1310444, size.height * 0.6564053);
    path_4.cubicTo(
        size.width * 0.1163188,
        size.height * 0.6564053,
        size.width * 0.1043809,
        size.height * 0.6444684,
        size.width * 0.1043809,
        size.height * 0.6297404);
    path_4.cubicTo(
        size.width * 0.1043809,
        size.height * 0.6150175,
        size.width * 0.1163188,
        size.height * 0.6030789,
        size.width * 0.1310444,
        size.height * 0.6030789);
    path_4.lineTo(size.width * 0.2309807, size.height * 0.6030789);
    path_4.cubicTo(
        size.width * 0.2457070,
        size.height * 0.6030789,
        size.width * 0.2576456,
        size.height * 0.6150175,
        size.width * 0.2576456,
        size.height * 0.6297404);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.1012656, size.height * 0.6354158),
      Offset(size.width * 0.2579246, size.height * 0.5990175),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.2576456, size.height * 0.7593211);
    path_5.cubicTo(
        size.width * 0.2576456,
        size.height * 0.7740509,
        size.width * 0.2457088,
        size.height * 0.7859895,
        size.width * 0.2309825,
        size.height * 0.7859895);
    path_5.lineTo(size.width * 0.1310444, size.height * 0.7859895);
    path_5.cubicTo(
        size.width * 0.1163188,
        size.height * 0.7859895,
        size.width * 0.1043809,
        size.height * 0.7740509,
        size.width * 0.1043809,
        size.height * 0.7593211);
    path_5.cubicTo(
        size.width * 0.1043809,
        size.height * 0.7446000,
        size.width * 0.1163188,
        size.height * 0.7326614,
        size.width * 0.1310444,
        size.height * 0.7326614);
    path_5.lineTo(size.width * 0.2309807, size.height * 0.7326614);
    path_5.cubicTo(
        size.width * 0.2457070,
        size.height * 0.7326614,
        size.width * 0.2576456,
        size.height * 0.7446018,
        size.width * 0.2576456,
        size.height * 0.7593211);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.1012656, size.height * 0.7649982),
      Offset(size.width * 0.2579246, size.height * 0.7286000),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.2576456, size.height * 0.8889158);
    path_6.cubicTo(
        size.width * 0.2576456,
        size.height * 0.9036456,
        size.width * 0.2457088,
        size.height * 0.9155825,
        size.width * 0.2309825,
        size.height * 0.9155825);
    path_6.lineTo(size.width * 0.1310444, size.height * 0.9155825);
    path_6.cubicTo(
        size.width * 0.1163188,
        size.height * 0.9155825,
        size.width * 0.1043809,
        size.height * 0.9036456,
        size.width * 0.1043809,
        size.height * 0.8889158);
    path_6.cubicTo(
        size.width * 0.1043809,
        size.height * 0.8741912,
        size.width * 0.1163188,
        size.height * 0.8622526,
        size.width * 0.1310444,
        size.height * 0.8622526);
    path_6.lineTo(size.width * 0.2309807, size.height * 0.8622526);
    path_6.cubicTo(
        size.width * 0.2457070,
        size.height * 0.8622526,
        size.width * 0.2576456,
        size.height * 0.8741912,
        size.width * 0.2576456,
        size.height * 0.8889158);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.1012656, size.height * 0.8945912),
      Offset(size.width * 0.2579246, size.height * 0.8581947),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.8515105, 0);
    path_7.lineTo(size.width * 0.2154807, 0);
    path_7.cubicTo(
        size.width * 0.1911140,
        0,
        size.width * 0.1713611,
        size.height * 0.01975088,
        size.width * 0.1713611,
        size.height * 0.04411649);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.07263088);
    path_7.lineTo(size.width * 0.2322105, size.height * 0.07263088);
    path_7.cubicTo(
        size.width * 0.2535298,
        size.height * 0.07263088,
        size.width * 0.2708123,
        size.height * 0.08991351,
        size.width * 0.2708123,
        size.height * 0.1112323);
    path_7.cubicTo(
        size.width * 0.2708123,
        size.height * 0.1325511,
        size.width * 0.2535298,
        size.height * 0.1498337,
        size.width * 0.2322105,
        size.height * 0.1498337);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.1498337);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.2022193);
    path_7.lineTo(size.width * 0.2322105, size.height * 0.2022193);
    path_7.cubicTo(
        size.width * 0.2535298,
        size.height * 0.2022193,
        size.width * 0.2708123,
        size.height * 0.2195018,
        size.width * 0.2708123,
        size.height * 0.2408211);
    path_7.cubicTo(
        size.width * 0.2708123,
        size.height * 0.2621386,
        size.width * 0.2535298,
        size.height * 0.2794228,
        size.width * 0.2322105,
        size.height * 0.2794228);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.2794228);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.3318105);
    path_7.lineTo(size.width * 0.2322105, size.height * 0.3318105);
    path_7.cubicTo(
        size.width * 0.2535298,
        size.height * 0.3318105,
        size.width * 0.2708123,
        size.height * 0.3490912,
        size.width * 0.2708123,
        size.height * 0.3704105);
    path_7.cubicTo(
        size.width * 0.2708123,
        size.height * 0.3917316,
        size.width * 0.2535298,
        size.height * 0.4090123,
        size.width * 0.2322105,
        size.height * 0.4090123);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.4090123);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.4614000);
    path_7.lineTo(size.width * 0.2322105, size.height * 0.4614000);
    path_7.cubicTo(
        size.width * 0.2535298,
        size.height * 0.4614000,
        size.width * 0.2708123,
        size.height * 0.4786807,
        size.width * 0.2708123,
        size.height * 0.5000000);
    path_7.cubicTo(
        size.width * 0.2708123,
        size.height * 0.5213193,
        size.width * 0.2535298,
        size.height * 0.5386018,
        size.width * 0.2322105,
        size.height * 0.5386018);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.5386018);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.5909895);
    path_7.lineTo(size.width * 0.2322105, size.height * 0.5909895);
    path_7.cubicTo(
        size.width * 0.2535298,
        size.height * 0.5909895,
        size.width * 0.2708123,
        size.height * 0.6082702,
        size.width * 0.2708123,
        size.height * 0.6295895);
    path_7.cubicTo(
        size.width * 0.2708123,
        size.height * 0.6509053,
        size.width * 0.2535298,
        size.height * 0.6681895,
        size.width * 0.2322105,
        size.height * 0.6681895);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.6681895);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.7205754);
    path_7.lineTo(size.width * 0.2322105, size.height * 0.7205754);
    path_7.cubicTo(
        size.width * 0.2535298,
        size.height * 0.7205754,
        size.width * 0.2708123,
        size.height * 0.7378579,
        size.width * 0.2708123,
        size.height * 0.7591754);
    path_7.cubicTo(
        size.width * 0.2708123,
        size.height * 0.7804965,
        size.width * 0.2535298,
        size.height * 0.7977789,
        size.width * 0.2322105,
        size.height * 0.7977789);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.7977789);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.8501667);
    path_7.lineTo(size.width * 0.2322105, size.height * 0.8501667);
    path_7.cubicTo(
        size.width * 0.2535298,
        size.height * 0.8501667,
        size.width * 0.2708123,
        size.height * 0.8674474,
        size.width * 0.2708123,
        size.height * 0.8887632);
    path_7.cubicTo(
        size.width * 0.2708123,
        size.height * 0.9100807,
        size.width * 0.2535298,
        size.height * 0.9273667,
        size.width * 0.2322105,
        size.height * 0.9273667);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.9273667);
    path_7.lineTo(size.width * 0.1713611, size.height * 0.9558807);
    path_7.cubicTo(
        size.width * 0.1713611,
        size.height * 0.9802474,
        size.width * 0.1911140,
        size.height * 0.9999982,
        size.width * 0.2154807,
        size.height * 0.9999982);
    path_7.lineTo(size.width * 0.8515088, size.height * 0.9999982);
    path_7.cubicTo(
        size.width * 0.8758754,
        size.height * 0.9999982,
        size.width * 0.8956263,
        size.height * 0.9802474,
        size.width * 0.8956263,
        size.height * 0.9558807);
    path_7.lineTo(size.width * 0.8956263, size.height * 0.04411649);
    path_7.cubicTo(size.width * 0.8956263, size.height * 0.01975088,
        size.width * 0.8758754, 0, size.width * 0.8515105, 0);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.8946316);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.8946316);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.8946316,
        size.width * 0.3428456,
        size.height * 0.8886614,
        size.width * 0.3428456,
        size.height * 0.8813000);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.8739404,
        size.width * 0.3488140,
        size.height * 0.8679684,
        size.width * 0.3561789,
        size.height * 0.8679684);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.8679684);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.8679684,
        size.width * 0.8005474,
        size.height * 0.8739368,
        size.width * 0.8005474,
        size.height * 0.8813000);
    path_7.cubicTo(
        size.width * 0.8005474,
        size.height * 0.8886632,
        size.width * 0.7945754,
        size.height * 0.8946316,
        size.width * 0.7872158,
        size.height * 0.8946316);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.8183702);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.8183702);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.8183702,
        size.width * 0.3428456,
        size.height * 0.8124000,
        size.width * 0.3428456,
        size.height * 0.8050386);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.7976737,
        size.width * 0.3488140,
        size.height * 0.7917088,
        size.width * 0.3561789,
        size.height * 0.7917088);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.7917088);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.7917088,
        size.width * 0.8005474,
        size.height * 0.7976737,
        size.width * 0.8005474,
        size.height * 0.8050386);
    path_7.cubicTo(
        size.width * 0.8005456,
        size.height * 0.8124000,
        size.width * 0.7945754,
        size.height * 0.8183702,
        size.width * 0.7872158,
        size.height * 0.8183702);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.7421105);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.7421105);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.7421105,
        size.width * 0.3428456,
        size.height * 0.7361404,
        size.width * 0.3428456,
        size.height * 0.7287789);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.7214175,
        size.width * 0.3488140,
        size.height * 0.7154474,
        size.width * 0.3561789,
        size.height * 0.7154474);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.7154474);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.7154474,
        size.width * 0.8005474,
        size.height * 0.7214158,
        size.width * 0.8005474,
        size.height * 0.7287789);
    path_7.cubicTo(
        size.width * 0.8005474,
        size.height * 0.7361421,
        size.width * 0.7945754,
        size.height * 0.7421105,
        size.width * 0.7872158,
        size.height * 0.7421105);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.6658526);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.6658526);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.6658526,
        size.width * 0.3428456,
        size.height * 0.6598789,
        size.width * 0.3428456,
        size.height * 0.6525211);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.6451561,
        size.width * 0.3488140,
        size.height * 0.6391895,
        size.width * 0.3561789,
        size.height * 0.6391895);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.6391895);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.6391895,
        size.width * 0.8005474,
        size.height * 0.6451561,
        size.width * 0.8005474,
        size.height * 0.6525211);
    path_7.cubicTo(
        size.width * 0.8005456,
        size.height * 0.6598789,
        size.width * 0.7945754,
        size.height * 0.6658526,
        size.width * 0.7872158,
        size.height * 0.6658526);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.5895930);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.5895930);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.5895930,
        size.width * 0.3428456,
        size.height * 0.5836211,
        size.width * 0.3428456,
        size.height * 0.5762614);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.5688965,
        size.width * 0.3488140,
        size.height * 0.5629281,
        size.width * 0.3561789,
        size.height * 0.5629281);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.5629281);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.5629281,
        size.width * 0.8005474,
        size.height * 0.5688965,
        size.width * 0.8005474,
        size.height * 0.5762614);
    path_7.cubicTo(
        size.width * 0.8005474,
        size.height * 0.5836228,
        size.width * 0.7945754,
        size.height * 0.5895930,
        size.width * 0.7872158,
        size.height * 0.5895930);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.5133316);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.5133316);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.5133316,
        size.width * 0.3428456,
        size.height * 0.5073579,
        size.width * 0.3428456,
        size.height * 0.5000000);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.4926368,
        size.width * 0.3488140,
        size.height * 0.4866684,
        size.width * 0.3561789,
        size.height * 0.4866684);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.4866684);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.4866684,
        size.width * 0.8005474,
        size.height * 0.4926368,
        size.width * 0.8005474,
        size.height * 0.5000000);
    path_7.cubicTo(
        size.width * 0.8005456,
        size.height * 0.5073596,
        size.width * 0.7945754,
        size.height * 0.5133316,
        size.width * 0.7872158,
        size.height * 0.5133316);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.4370719);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.4370719);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.4370719,
        size.width * 0.3428456,
        size.height * 0.4311035,
        size.width * 0.3428456,
        size.height * 0.4237386);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.4163754,
        size.width * 0.3488140,
        size.height * 0.4104070,
        size.width * 0.3561789,
        size.height * 0.4104070);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.4104070);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.4104070,
        size.width * 0.8005474,
        size.height * 0.4163754,
        size.width * 0.8005474,
        size.height * 0.4237386);
    path_7.cubicTo(
        size.width * 0.8005474,
        size.height * 0.4311035,
        size.width * 0.7945754,
        size.height * 0.4370719,
        size.width * 0.7872158,
        size.height * 0.4370719);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.3608105);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.3608105);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.3608105,
        size.width * 0.3428456,
        size.height * 0.3548421,
        size.width * 0.3428456,
        size.height * 0.3474789);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.3401158,
        size.width * 0.3488140,
        size.height * 0.3341474,
        size.width * 0.3561789,
        size.height * 0.3341474);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.3341474);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.3341474,
        size.width * 0.8005474,
        size.height * 0.3401158,
        size.width * 0.8005474,
        size.height * 0.3474789);
    path_7.cubicTo(
        size.width * 0.8005474,
        size.height * 0.3548421,
        size.width * 0.7945754,
        size.height * 0.3608105,
        size.width * 0.7872158,
        size.height * 0.3608105);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.2845509);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.2845509);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.2845509,
        size.width * 0.3428456,
        size.height * 0.2785825,
        size.width * 0.3428456,
        size.height * 0.2712193);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.2638579,
        size.width * 0.3488140,
        size.height * 0.2578877,
        size.width * 0.3561789,
        size.height * 0.2578877);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.2578877);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.2578877,
        size.width * 0.8005474,
        size.height * 0.2638579,
        size.width * 0.8005474,
        size.height * 0.2712193);
    path_7.cubicTo(
        size.width * 0.8005456,
        size.height * 0.2785825,
        size.width * 0.7945754,
        size.height * 0.2845509,
        size.width * 0.7872158,
        size.height * 0.2845509);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.2082912);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.2082912);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.2082912,
        size.width * 0.3428456,
        size.height * 0.2023211,
        size.width * 0.3428456,
        size.height * 0.1949596);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.1875982,
        size.width * 0.3488140,
        size.height * 0.1816281,
        size.width * 0.3561789,
        size.height * 0.1816281);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.1816281);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.1816281,
        size.width * 0.8005474,
        size.height * 0.1875982,
        size.width * 0.8005474,
        size.height * 0.1949596);
    path_7.cubicTo(
        size.width * 0.8005456,
        size.height * 0.2023228,
        size.width * 0.7945754,
        size.height * 0.2082912,
        size.width * 0.7872158,
        size.height * 0.2082912);
    path_7.close();
    path_7.moveTo(size.width * 0.7872158, size.height * 0.1320314);
    path_7.lineTo(size.width * 0.3561789, size.height * 0.1320314);
    path_7.cubicTo(
        size.width * 0.3488140,
        size.height * 0.1320314,
        size.width * 0.3428456,
        size.height * 0.1260618,
        size.width * 0.3428456,
        size.height * 0.1186996);
    path_7.cubicTo(
        size.width * 0.3428456,
        size.height * 0.1113363,
        size.width * 0.3488140,
        size.height * 0.1053679,
        size.width * 0.3561789,
        size.height * 0.1053679);
    path_7.lineTo(size.width * 0.7872158, size.height * 0.1053679);
    path_7.cubicTo(
        size.width * 0.7945754,
        size.height * 0.1053679,
        size.width * 0.8005474,
        size.height * 0.1113363,
        size.width * 0.8005474,
        size.height * 0.1186996);
    path_7.cubicTo(
        size.width * 0.8005456,
        size.height * 0.1260630,
        size.width * 0.7945754,
        size.height * 0.1320314,
        size.width * 0.7872158,
        size.height * 0.1320314);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.1566402, size.height * 0.6063825),
      Offset(size.width * 0.9342386, size.height * 0.5608526),
      [
        const Color(0xff368179).withOpacity(1),
        const Color(0xff11AEBA).withOpacity(1)
      ],
      [0, 1],
    );
    canvas.drawPath(path_7, paint7Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
