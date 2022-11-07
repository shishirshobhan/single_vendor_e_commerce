import 'package:flutter/material.dart';

class Clip1Clipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, size.height * 0.2847714);
    path0.quadraticBezierTo(0, size.height * 0.8211929, 0, size.height);
    path0.lineTo(size.width, size.height);
    path0.quadraticBezierTo(size.width * 0.9993750, size.height * 0.7021429,
        size.width * 0.9991667, size.height * 0.6028571);
    path0.cubicTo(
        size.width * 0.8981917,
        size.height * 0.6394286,
        size.width * 0.1194833,
        size.height * 0.2413714,
        0,
        size.height * 0.2847714);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
