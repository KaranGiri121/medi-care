import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/utils/constants/constant_string.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forget Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: AppSize.spaceItems/2),
            const Text(ConstantStrings.forgetPassword),
            const SizedBox(height: AppSize.spaceSections),
            TextFormField(
              decoration: const InputDecoration(labelText: "E mail",prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: AppSize.spaceItems),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Reset Password"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
