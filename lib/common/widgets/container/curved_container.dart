import 'package:flutter/material.dart';

class CurvedContainer extends StatelessWidget {
  const CurvedContainer({super.key, this.child, this.height, this.clipper, this.color, this.width, this.padding});

  final Widget? child;
  final double? height,width;
  final CustomClipper<Path>? clipper;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        padding: padding,
        color: color,
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
