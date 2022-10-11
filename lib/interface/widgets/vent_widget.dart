import 'package:flutter/material.dart';

class VentWidget extends StatelessWidget {
  const VentWidget({
    Key? key,
    required this.heigh,
    required this.width,
  }) : super(key: key);

  final double heigh;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigh,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(99),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
  }
}
