import 'package:flutter/material.dart';

class ProductDetailsCustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    var path = Path();
    double d = h * 0.55;

    path.moveTo(0, 0);
    path.lineTo(0, d);
    path.quadraticBezierTo(0, h, w * 0.5, h);
    path.quadraticBezierTo(w, h, w, d);
    path.lineTo(w, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
