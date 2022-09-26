import 'package:flutter/material.dart';

class ProductDetailsCustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    double d = 100;
    var path = Path();
    // normally starting from the (0,0)
    path.moveTo(0, h); // change the start point to bottom left
    path.lineTo(w, h); // bottom right
    path.lineTo(w, d); // top right
    // make curve
    path.quadraticBezierTo(w * 0.5, w * 0.85, 0, d);
    // path.lineTo(0, d); // top left
    path.close(); // draw line to start by closing
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
