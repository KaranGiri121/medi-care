import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/features/authentication/controllers/signup/signup_controller.dart';
import 'package:medi_care/utils/constants/sizes.dart';
import 'package:medi_care/utils/validators/validation.dart';

import 'term_and_condition_checkbox.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) => Validator.validateEmptyText("First name", value),
                  controller: controller.firstName,
                  decoration: const InputDecoration(
                      labelText: "First Name", prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: AppSize.spaceItems / 2),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) => Validator.validateEmptyText("Last name", value),
                  decoration: const InputDecoration(
                      labelText: "Last Name", prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.spaceItems - 6),
          TextFormField(
            controller: controller.username,
            validator: (value) => Validator.validateEmptyText("Username", value),

            decoration: const InputDecoration(
                labelText: "Username", prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: AppSize.spaceInputFields - 6),
          TextFormField(
            controller: controller.email,
            expands: false,
            validator: (value) => Validator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: "E-mail",
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),
          const SizedBox(height: AppSize.spaceInputFields - 6),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => Validator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: "Phone No.",
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: AppSize.spaceInputFields - 6),
          Obx(
            () => TextFormField(
              controller: controller.password,
              obscureText: controller.passwordHide.value,
              validator: (value) => Validator.validatePassword(value),
              expands: false,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                    onPressed: () => controller.passwordHide.value =
                        !controller.passwordHide.value,
                    icon: Icon(controller.passwordHide.value ? Iconsax.eye_slash : Iconsax.eye)),
              ),
            ),
          ),
          const SizedBox(height: AppSize.spaceInputFields - 6),
          const TermAndCondition(),
          const SizedBox(height: AppSize.spaceSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}
