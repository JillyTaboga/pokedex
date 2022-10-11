import 'dart:async';

import 'package:flutter/material.dart';

class SphericButton extends StatefulWidget {
  const SphericButton({
    Key? key,
    required this.size,
    required this.color,
    this.onTap,
    this.loading = false,
  }) : super(key: key);

  final double size;
  final Color color;
  final void Function()? onTap;
  final bool loading;

  @override
  State<SphericButton> createState() => _SphericButtonState();
}

class _SphericButtonState extends State<SphericButton> {
  bool loading = false;
  bool shine = false;

  Timer? timer;

  @override
  void initState() {
    super.initState();
    loading = widget.loading;
    setLoading();
  }

  @override
  void didUpdateWidget(covariant SphericButton oldWidget) {
    if (widget.loading != oldWidget.loading) {
      loading = widget.loading;
      setLoading();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  setLoading() {
    timer = Timer.periodic(const Duration(milliseconds: 300), (time) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (loading && mounted) {
          setState(() {
            shine = !shine;
          });
        } else if (!loading && mounted) {
          setState(() {
            shine = false;
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final smallPadding = (widget.size / 40);
    final mediumPadding = (widget.size / 15);
    final bigPadding = (widget.size / 8);

    return Container(
      clipBehavior: Clip.antiAlias,
      height: widget.size,
      width: widget.size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
        boxShadow: kElevationToShadow[3],
        border: Border.all(color: Colors.black, width: 1),
      ),
      padding: EdgeInsets.all(mediumPadding),
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
            height: widget.size - smallPadding,
            width: widget.size - smallPadding,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: kElevationToShadow[3],
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Container(
              height: widget.size - smallPadding,
              width: widget.size - smallPadding,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: shine ? Colors.red : widget.color,
              ),
              padding: EdgeInsets.only(
                top: mediumPadding,
                left: mediumPadding,
                right: smallPadding,
                bottom: smallPadding,
              ),
              child: Container(
                height: widget.size,
                width: widget.size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
          ),
          Positioned(
            top: mediumPadding + 1,
            left: mediumPadding + 1,
            child: Container(
              height: widget.size / 3,
              width: widget.size / 3,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.color,
              ),
            ),
          ),
          Positioned(
            top: bigPadding + 2,
            left: bigPadding,
            child: Container(
              height: widget.size / 6,
              width: widget.size / 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ),
          Material(
            clipBehavior: Clip.antiAlias,
            color: Colors.transparent,
            surfaceTintColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(999)),
            child: InkWell(
              onTap: widget.onTap,
              child: SizedBox(
                height: widget.size,
                width: widget.size,
              ),
            ),
          )
        ],
      ),
    );
  }
}
