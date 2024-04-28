import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({super.key, required this.icon, this.color, this.backgroundColor, this.onPressed});

  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
