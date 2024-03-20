import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/utils/constants/sizes.dart';

import 'term_and_condition_checkbox.dart';
class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "First Name",
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: AppSize.spaceItems / 2),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Last Name",
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.spaceItems - 6),
          TextFormField(
            decoration: const InputDecoration(
                labelText: "Username",
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: AppSize.spaceInputFields - 6),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "E-mail",
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),
          const SizedBox(height: AppSize.spaceInputFields - 6),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Phone No.",
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: AppSize.spaceInputFields - 6),
          TextFormField(
            obscureText: true,
            expands: false,
            decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: AppSize.spaceInputFields - 6),
          const TermAndCondition(),
          const SizedBox(height: AppSize.spaceSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(()),
              child: const Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}
