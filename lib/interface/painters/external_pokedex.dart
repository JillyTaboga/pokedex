import 'package:flutter/material.dart';
import 'package:pokedex/core/constants.dart';

class ExternalPokedexPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const height = 80.0;
    final shadowPaint = Paint()
      ..color = Colors.red.shade900
      ..style = PaintingStyle.fill;
    final fillPaint = Paint()
      ..color = PokedexColors.baseColor
      ..style = PaintingStyle.fill;
    final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    final line2Paint = Paint()
      ..color = Colors.black45
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    final ringPaint = Paint()
      ..color = Colors.red.shade900
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final pathTop = Path()..moveTo(0, height);
    pathTop.lineTo(size.width / 3, height);
    pathTop.lineTo(size.width / 3 * 2, height / 3 * 2);
    pathTop.lineTo(size.width, height / 3 * 2);
    pathTop.lineTo(size.width, 0);
    pathTop.lineTo(0, 0);
    pathTop.close();
    canvas.drawPath(pathTop, linePaint);
    canvas.drawPath(pathTop, fillPaint);

    const innerPadding = 3.0;
    const rightSpace = 30;

    final innerPath = Path()..moveTo(innerPadding, height + innerPadding);
    innerPath.lineTo(size.width / 3, height + innerPadding);
    innerPath.lineTo(size.width / 3 * 2, (height / 3 * 2) + innerPadding);
    innerPath.lineTo(size.width - rightSpace - innerPadding,
        (height / 3 * 2) + innerPadding);
    innerPath.lineTo(
        size.width - rightSpace - innerPadding, size.height - innerPadding);
    innerPath.lineTo(innerPadding, size.height - innerPadding);
    innerPath.close();

    final outterPath = Path()..moveTo(0, height);
    outterPath.lineTo(size.width / 3, height);
    outterPath.lineTo(size.width / 3 * 2, (height / 3 * 2));
    outterPath.lineTo(size.width, (height / 3 * 2));
    outterPath.lineTo(size.width, size.height);
    outterPath.lineTo(0, size.height);
    outterPath.close();

    canvas.drawPath(outterPath, shadowPaint);
    canvas.drawPath(innerPath, line2Paint);

    final ringPath = Path();
    ringPath.moveTo(size.width - rightSpace, (height / 3 * 2) + innerPadding);
    ringPath.cubicTo(
      size.width - (rightSpace),
      (height / 3 * 2) - (innerPadding / 3),
      size.width,
      (height / 3 * 2) - (innerPadding / 3),
      size.width,
      (height / 3 * 2) + innerPadding,
    );

    ringPath.lineTo(
      size.width,
      size.height,
    );
    ringPath.cubicTo(
      size.width,
      (size.height - innerPadding) - (innerPadding / 3),
      size.width - rightSpace,
      (size.height - innerPadding) - (innerPadding / 3),
      size.width - rightSpace,
      (size.height),
    );
    ringPath.close();

    canvas.drawPath(ringPath, ringPaint);
    canvas.drawPath(ringPath, fillPaint);

    final firstRing = Path()
      ..moveTo(
        size.width - rightSpace,
        size.height / 5,
      );
    firstRing.cubicTo(
      size.width - rightSpace,
      (size.height / 5) - innerPadding,
      size.width,
      (size.height / 5) - innerPadding,
      size.width,
      (size.height / 5),
    );
    final secondRing = Path()
      ..moveTo(
        size.width - rightSpace,
        size.height / 5 * 4,
      );
    secondRing.cubicTo(
      size.width - rightSpace,
      (size.height / 5 * 4) - innerPadding,
      size.width,
      (size.height / 5 * 4) - innerPadding,
      size.width,
      (size.height / 5 * 4),
    );
    canvas.drawPath(firstRing, ringPaint);
    canvas.drawPath(secondRing, ringPaint);
    canvas.drawRect(Rect.fromLTRB(0, 0, size.width, size.height), linePaint);
  }

  @override
  bool shouldRepaint(ExternalPokedexPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ExternalPokedexPainter oldDelegate) => false;
}
