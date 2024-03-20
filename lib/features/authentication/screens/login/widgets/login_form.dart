import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/features/authentication/controllers/login/login_controller.dart';
import 'package:medi_care/features/authentication/screens/password_config/forget_password.dart';
import 'package:medi_care/features/authentication/screens/signup/signup.dart';
import 'package:medi_care/utils/constants/sizes.dart';
import 'package:medi_care/utils/validators/validation.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          TextFormField(
            controller: controller.email,
            validator: (value) => Validator.validateEmail(value),
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right), labelText: "E-mail"),
          ),
          const SizedBox(
            height: AppSize.spaceInputFields,
          ),
          Obx(
            () => TextFormField(
              validator: (value) => Validator.validatePassword(value),
              controller: controller.password,
              obscureText: controller.passwordHide.value,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: IconButton(
                    onPressed: () {
                      controller.passwordHide.value =
                          !controller.passwordHide.value;
                    },
                    icon: controller.passwordHide.value
                        ? const Icon(Iconsax.eye_slash)
                        : const Icon(Iconsax.eye)),
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.spaceItems / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.rememberMe.value,
                      onChanged: (vale) {
                        controller.rememberMe.value = !controller.rememberMe.value;
                      },
                    ),
                  ),
                  const Text("Remember Me"),
                ],
              ),
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text("Forget Password?"))
            ],
          ),
          const SizedBox(
            height: AppSize.spaceSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.emailAndPasswordLogin(),
              child: const Text("Login"),
            ),
          ),
          const SizedBox(
            height: AppSize.spaceItems,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignUp()),
              child: const Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}
