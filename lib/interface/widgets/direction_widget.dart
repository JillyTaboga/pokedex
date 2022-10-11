import 'package:flutter/material.dart';

class DirectionalWidget extends StatelessWidget {
  const DirectionalWidget({
    Key? key,
    this.onDownClick,
    this.onLeftClick,
    this.onMidClick,
    this.onRightClick,
    this.onUpClick,
  }) : super(key: key);

  final void Function()? onUpClick;
  final void Function()? onRightClick;
  final void Function()? onDownClick;
  final void Function()? onLeftClick;
  final void Function()? onMidClick;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 20,
              height: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                boxShadow: kElevationToShadow[3],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                color: Colors.grey.shade800,
              ),
              child: InkWell(
                onTap: onUpClick,
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 3,
                    right: 3,
                  ),
                  height: double.maxFinite,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: Colors.white12,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 20,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    boxShadow: kElevationToShadow[3],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    color: Colors.grey.shade800,
                  ),
                  child: InkWell(
                    onTap: onLeftClick,
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 3,
                        right: 3,
                      ),
                      height: double.maxFinite,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        ),
                        color: Colors.white12,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[3],
                  color: Colors.grey.shade800,
                ),
                child: InkWell(
                  onTap: onMidClick,
                  child: Container(
                    margin: const EdgeInsets.only(
                      bottom: 2,
                      right: 2,
                    ),
                    height: double.maxFinite,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white12,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 20,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    boxShadow: kElevationToShadow[3],
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: Colors.grey.shade800,
                  ),
                  child: InkWell(
                    onTap: onRightClick,
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 3,
                        right: 3,
                      ),
                      height: double.maxFinite,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: Colors.white12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: 20,
              height: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                boxShadow: kElevationToShadow[3],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.grey.shade800,
              ),
              child: InkWell(
                onTap: onDownClick,
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 3,
                    right: 3,
                  ),
                  height: double.maxFinite,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    color: Colors.white12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
