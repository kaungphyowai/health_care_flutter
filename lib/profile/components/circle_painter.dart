import 'dart:math';

import 'package:flutter/material.dart';
import 'package:health_care_flutter/SizeConfig.dart';
import 'package:health_care_flutter/constants.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint bgPaint = Paint()
      ..color = color3.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    Paint outermostCompletePaint = Paint()
      ..color = color1ter
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;
    Paint middleCompletePaint = Paint()
      ..color = color4ter
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;
    Paint innermostCompletePaint = Paint()
      ..color = color3ter
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width > size.height ? size.height / 2 : size.width / 2;
    double radius2 =
        size.width > size.height ? size.height / 2 - 10 : size.width / 2 - 10;
    double radius3 =
        size.width > size.height ? size.height / 2 - 20 : size.width / 2 - 20;

    canvas.drawCircle(center, radius, bgPaint);
    canvas.drawCircle(center, radius2, bgPaint);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        3 * pi / 2, false, outermostCompletePaint);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius2), -pi / 2,
        pi / 2, false, middleCompletePaint);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius3), -pi / 2,
        pi / 2, false, innermostCompletePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
