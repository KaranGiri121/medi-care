import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:medi_care/data/repositories/authentication/authentication_repository.dart';
import 'package:medi_care/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:medi_care/features/authentication/screens/login/login.dart';
import 'package:medi_care/utils/constants/constant_string.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key, required this.email});


  final String? email;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          IconButton(
              onPressed: () {
                AuthenticationRepo.instance.logout();
                Get.offAll(() => const Login());
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultPadding),
          child: Column(
            children: [
              Image(
                image: const AssetImage(ConstantStrings.verifyScreenImage),
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              const SizedBox(height: AppSize.spaceSections),
              Text(
                "Verify your email address!",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSize.spaceItems),
              Text(email ?? "",
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: AppSize.spaceItems),
              Text(
                ConstantStrings.verifyMessage,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSize.spaceSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.checkEmailVerificationStatus(),
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(
                height: AppSize.spaceItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => controller.sendEmailVerification(),
                  child: const Text("resend Email"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
