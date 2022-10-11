import 'package:flutter/material.dart';
import 'package:pokedex/core/constants.dart';

class InternalPokedexPainter extends CustomPainter {
  InternalPokedexPainter({this.dark = false});
  final bool dark;
  @override
  void paint(Canvas canvas, Size size) {
    final baseColor =
        dark ? PokedexColors.darkBaseColor : PokedexColors.baseColor;
    const height = 80.0;
    final fillPaint = Paint()
      ..color = baseColor
      ..style = PaintingStyle.fill;
    final line2Paint = Paint()
      ..color = Colors.black45
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

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

    canvas.drawPath(innerPath, fillPaint);
    canvas.drawPath(innerPath, line2Paint);
  }

  @override
  bool shouldRepaint(InternalPokedexPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(InternalPokedexPainter oldDelegate) => false;
}
