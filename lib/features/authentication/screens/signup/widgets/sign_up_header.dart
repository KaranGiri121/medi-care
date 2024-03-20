import 'package:flutter/material.dart';
import 'package:medi_care/utils/constants/constant_string.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Unlock a world of possibilities",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: AppSize.spaceItems / 2,
        ),
        Text(
          ConstantStrings.createAccountLabel,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
