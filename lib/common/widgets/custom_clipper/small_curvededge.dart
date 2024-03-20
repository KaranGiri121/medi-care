import 'package:flutter/material.dart';

class SmallCurvedEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 20);

    final firstCurved = Offset(0, size.height);
    final lastCurved = Offset(30, size.height);

    path.quadraticBezierTo(
        firstCurved.dx, firstCurved.dy, lastCurved.dx, lastCurved.dy);

    final secondFirstCurved = Offset(0, size.height);
    final secondLastCurved = Offset(size.width - 30, size.height);

    path.quadraticBezierTo(secondFirstCurved.dx, secondFirstCurved.dy,
        secondLastCurved.dx, secondLastCurved.dy);

    final thirdFirstCurved = Offset(size.width, size.height);
    final thirdLastCurved = Offset(size.width, size.height - 20);

    path.quadraticBezierTo(thirdFirstCurved.dx, thirdFirstCurved.dy,
        thirdLastCurved.dx, thirdLastCurved.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
