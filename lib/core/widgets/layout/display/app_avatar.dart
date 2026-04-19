import 'package:flutter/material.dart';

class AppAvatar extends StatelessWidget {
  final String? imageUrl;
  final String name;
  final double radius;

  const AppAvatar({super.key, this.imageUrl, required this.name, this.radius = 24});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
      backgroundImage: imageUrl != null ? NetworkImage(imageUrl!) : null,
      child: imageUrl == null
          ? Text(
              name.substring(0, 1).toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
            )
          : null,
    );
  }
}