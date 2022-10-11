import 'package:flutter/material.dart';

class PokeBallButton extends StatelessWidget {
  const PokeBallButton({
    Key? key,
    required this.size,
    this.onTap,
  }) : super(key: key);

  final double size;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: kElevationToShadow[4],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              boxShadow: kElevationToShadow[5],
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(
              top: 10,
              left: 10,
              bottom: 10,
              right: 10,
            ),
            width: double.maxFinite,
            height: double.maxFinite,
            padding: EdgeInsets.only(top: 0, left: size / 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade400,
            ),
          ),
          Center(
            child: Container(
              width: size,
              height: 10,
              decoration: const BoxDecoration(
                color: Colors.black87,
              ),
            ),
          ),
          Center(
            child: Container(
              width: size / 3,
              height: size / 3,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black87,
              ),
              child: Center(
                child: Container(
                  width: size / 3,
                  height: size / 3,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
          Material(
            clipBehavior: Clip.antiAlias,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(99999),
            ),
            child: InkWell(
              onTap: onTap,
              child: const SizedBox.expand(),
            ),
          )
        ],
      ),
    );
  }
}
