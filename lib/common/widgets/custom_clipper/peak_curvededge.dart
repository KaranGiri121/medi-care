import 'package:flutter/material.dart';
class PeakCurvedEdge extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height*0.5);

    final firstCurved = Offset(size.width/2, size.height);
    final lastCurved = Offset(size.width, size.height*0.5);

    path.quadraticBezierTo(firstCurved.dx, firstCurved.dy,lastCurved.dx, lastCurved.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
