// import 'dart:async';

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:medi_care/data/repositories/authentication/authentication_repository.dart';
import 'package:medi_care/features/authentication/screens/login/login.dart';
import 'package:medi_care/utils/constants/constant_string.dart';
import 'package:medi_care/utils/popups/full_screen_loader.dart';
import 'package:medi_care/utils/popups/loader.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
    sendEmailVerification();
    setTimeForAutoRedirect();
  }

  sendEmailVerification() async {
    try {
      await AuthenticationRepo.instance.sendEmailVerification();
      Loader.successSnackBar(
          title: "Email Send!",
          message: "Please check your inbox and verify your email");
    } catch (e) {
      Loader.errorSnackBar(title: "Oh snap!", message: e.toString());
    }
  }

setTimeForAutoRedirect() {
  Timer.periodic(const Duration(seconds: 1), (timer) async {
    await FirebaseAuth.instance.currentUser?.reload();
    final user = FirebaseAuth.instance.currentUser;
    if (user?.emailVerified ?? false) {
      timer.cancel();

      FullScreenLoader.openLoadingDialog(
          "Email Verified Successfully", ConstantStrings.loaderAnimation);

      await Future.delayed(const Duration(seconds: 2), () => Get.offAll(const Login()));

      // Get.off(
      //       () => SuccessScreen(
      //     image: "assets/images/animations/72462-check-register.json",
      //     title: TTexts.yourAccountCreatedTitle,
      //     subTitle: TTexts.yourAccountCreatedSubTitle,
      //     onPressed: ()=> AuthenticationRepository.instance.screenRedirect(),
      //   ),
      // );
    }
  });
}

  checkEmailVerificationStatus() async {

    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      FullScreenLoader.openLoadingDialog(
          "Email Verified Successfully", ConstantStrings.loaderAnimation);

      await Future.delayed(const Duration(seconds: 2), () => Get.offAll(const Login()));
    }
  }
}
