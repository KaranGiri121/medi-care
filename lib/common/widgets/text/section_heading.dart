import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.buttonText = "See All",
    this.showExtra = false,
    this.onPressed, this.isBackgroundDark=false,
  });

  final String title, buttonText;
  final bool showExtra;
  final void Function()? onPressed;
  final bool isBackgroundDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: isBackgroundDark ? Colors.white : null ),
        ),
        if (showExtra) TextButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }
}
