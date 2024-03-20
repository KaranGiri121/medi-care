import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_care/features/authentication/controllers/signup/signup_controller.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) {
                controller.privacyPolicy.value = !controller.privacyPolicy.value;
              },
            ),
          ),
        ),
        const SizedBox(width: AppSize.spaceItems),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Sign me up! I'm on board with the",
                    style: Theme.of(context).textTheme.bodyMedium),
                TextSpan(
                    text: " Privacy Policy ",
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                  text: "and ",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextSpan(
                    text: "Terms of Use",
                    style: Theme.of(context).textTheme.bodyLarge!.apply(
                        color: AppColor.accentColor,
                        decoration: TextDecoration.underline)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
