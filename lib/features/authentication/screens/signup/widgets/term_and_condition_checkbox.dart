import 'package:flutter/material.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),),
        const SizedBox(width: AppSize.spaceItems),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Sign me up! I'm on board with the",
                    style:
                    Theme.of(context).textTheme.bodyMedium),
                TextSpan(
                    text: " Privacy Policy ",
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                  text: "and ",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextSpan(
                    text: "Terms of Use",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .apply(
                        color: AppColor.accentColor,
                        decoration:
                        TextDecoration.underline)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
