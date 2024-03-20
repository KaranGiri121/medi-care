import 'package:flutter/material.dart';
class IconWithString extends StatelessWidget {
  const IconWithString({
    super.key, required this.icon, required this.text,this.size=16, this.color,
  });

  final IconData icon;
  final String text;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: size, color: color),
        const SizedBox(width: 1,),
        Text(text),
      ],
    );
  }
}