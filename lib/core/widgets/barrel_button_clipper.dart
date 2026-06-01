import 'package:flutter/material.dart';

class BarrelButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double w = size.width;
    final double h = size.height;

    // Define the radius for the rounded corners
    final double radius = h * 0.35;

    // Start at top-left, just after the corner radius
    path.moveTo(radius, 0);

    // 1. Top Edge: Curve outward towards the center
    // Control point is at the horizontal center, pulled slightly upwards (-h * 0.08)
    path.quadraticBezierTo(w / 2, -h * 0.1, w - radius, 0);

    // 2. Top-Right Corner
    path.quadraticBezierTo(w, 0, w, radius);

    // 3. Right Edge (Straight down)
    path.lineTo(w, h - radius);

    // 4. Bottom-Right Corner
    path.quadraticBezierTo(w, h, w - radius, h);

    // 5. Bottom Edge: Curve outward towards the center
    // Control point is at the horizontal center, pulled slightly downwards (h * 1.08)
    path.quadraticBezierTo(w / 2, h * 1.08, radius, h);

    // 6. Bottom-Left Corner
    path.quadraticBezierTo(0, h, 0, h - radius);

    // 7. Left Edge (Straight up)
    path.lineTo(0, radius);

    // 8. Top-Left Corner
    path.quadraticBezierTo(0, 0, radius, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
