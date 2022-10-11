import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrackPad extends HookConsumerWidget {
  const TrackPad({
    Key? key,
    required this.onPan,
    required this.onPanEnd,
  }) : super(key: key);

  final void Function(Offset position) onPan;
  final void Function() onPanEnd;

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(20),
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: MouseRegion(
        cursor: MaterialStateMouseCursor.clickable,
        child: GestureDetector(
          onPanStart: (details) {
            onPan(details.localPosition);
          },
          onPanUpdate: (details) {
            onPan(details.localPosition);
          },
          onPanEnd: (details) {
            onPanEnd();
          },
          onPanCancel: () {
            onPanEnd();
          },
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black26,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: List.generate(
                5,
                (index) => Expanded(
                  child: Column(
                    children: List.generate(
                      4,
                      (index) => Expanded(
                        child: Container(
                          height: double.maxFinite,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black38,
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
