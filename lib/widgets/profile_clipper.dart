import 'dart:math';

import 'package:flutter/cupertino.dart';

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, size.height * 4 / 5);
    Offset centerPoint = Offset(size.width / 2, size.height);
    Offset endPoint = Offset(size.width, size.height * 4 / 5);
    path.quadraticBezierTo(
        centerPoint.dx, centerPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
