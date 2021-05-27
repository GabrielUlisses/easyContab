import 'package:flutter/material.dart';


class DrawTriangle extends CustomPainter {
  Paint _paint;

  DrawTriangle({MaterialColor color}) {
    _paint = Paint()
    ..color = color
    ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width/2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DrawInverseTriangle extends CustomPainter {
  Paint _paint;

  DrawInverseTriangle({MaterialColor color}) {
    _paint = Paint()
    ..color = color
    ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width/2, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}