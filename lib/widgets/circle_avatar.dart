import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.index,
    required this.radius,
  });
  final int index;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: radius,
      foregroundImage: AssetImage("assets/images/p$index.jpg"),
    );
  }
}
