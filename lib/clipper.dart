import 'package:flutter/material.dart';

class MyClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    Path path = Path();
    path.moveTo(0, height * .5);
    path.lineTo(0, height);
    path.lineTo(width, height);
    path.lineTo(width, height * .5);
    path.quadraticBezierTo(width * 0.9, -height / 2, width * .9, height * .5);
    path.quadraticBezierTo(width * 0.8, -height / 2, width * .8, height * .5);
    path.quadraticBezierTo(width * 0.7, -height / 2, width * .7, height * .5);
    path.quadraticBezierTo(width * 0.6, -height / 2, width * .6, height * .5);
    path.quadraticBezierTo(width * 0.5, -height / 2, width * .5, height * .5);
    path.quadraticBezierTo(width * 0.4, -height / 2, width * .4, height * .5);
    path.quadraticBezierTo(width * 0.3, -height / 2, width * .3, height * .5);
    path.quadraticBezierTo(width * 0.2, -height / 2, width * .2, height * .5);
    path.quadraticBezierTo(width * 0.1, -height / 2, width * .1, height * .5);
    path.quadraticBezierTo(width * 0.05, -height / 2, 0, height * .5);

    path.close();

    // path.moveTo(0, height);
    // path.quadraticBezierTo(width / 2, height + .20, width, height);
    // path.lineTo(width, 0);
    // path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
