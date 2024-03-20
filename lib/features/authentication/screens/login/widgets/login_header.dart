import 'package:flutter/material.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          height: AppSize.spaceItems / 2,
        ),
        Text(
          "To Your Convince Medicine Store",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
