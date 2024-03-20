import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/features/authentication/screens/password_config/forget_password.dart';
import 'package:medi_care/features/authentication/screens/signup/signup.dart';
import 'package:medi_care/navigation_menu.dart';
import 'package:medi_care/utils/constants/sizes.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "E-mail"),
          ),
          const SizedBox(
            height: AppSize.spaceInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: "Password",
              suffixIcon: Icon(Iconsax.eye_slash),
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
                  Checkbox(value: true, onChanged: (vale) {}),
                  const Text("Remember Me"),
                ],
              ),
              TextButton(
                  onPressed: () => Get.to(()=> const ForgetPassword()),
                  child: const Text("Forget Password?"))
            ],
          ),
          const SizedBox(height: AppSize.spaceSections,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(()=> const NavigationMenu()),
              child: const Text("Login"),
            ),
          ),
          const SizedBox(height: AppSize.spaceItems,),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(()=> const SignUp()),
              child: const Text("Create Account"),

            ),
          ),
        ],
      ),
    );
  }
}
