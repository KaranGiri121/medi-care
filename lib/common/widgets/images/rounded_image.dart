import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key, required this.imagePath, this.fit=BoxFit.contain, this.radius=0, this.color,
  });

  final String imagePath;
  final BoxFit fit;
  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(

      borderRadius: BorderRadius.circular(radius),
      child: Image(
        color: color,
        image: AssetImage(imagePath),
        fit:fit,
      ),
    );
  }
}
