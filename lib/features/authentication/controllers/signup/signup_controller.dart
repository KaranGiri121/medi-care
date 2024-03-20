import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:medi_care/data/repositories/authentication/authentication_repository.dart';
import 'package:medi_care/data/repositories/user/user_repository.dart';
import 'package:medi_care/features/authentication/screens/signup/verify_email.dart';
import 'package:medi_care/features/personalization/models/user_model.dart';
import 'package:medi_care/utils/constants/constant_string.dart';
import 'package:medi_care/utils/helper/network_manager.dart';
import 'package:medi_care/utils/popups/full_screen_loader.dart';
import 'package:medi_care/utils/popups/loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final passwordHide = true.obs;
  final privacyPolicy = false.obs;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      FullScreenLoader.openLoadingDialog("We are processing your information",
          ConstantStrings.loaderAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }
      if (!signupFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }
      if (!privacyPolicy.value) {
        Loader.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In Order To Create Account, you must have to read and accept the privacy policy & terms of use");
        FullScreenLoader.stopLoading();
        return;
      }

      final userCredential = await AuthenticationRepo.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      final newUser = UserModel(
          id: userCredential.user!.uid,
          username: username.text.trim(),
          email: email.text.trim(),
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: "");

      final userRepository = Get.put(UserRepo());

      await userRepository.saveUserRecord(newUser);

      FullScreenLoader.stopLoading();
      Loader.successSnackBar(
          title: "Congratulation",
          message: "Your Account has been created! Verify email to continue");

      Get.to(() => VerifyEmail(email: newUser.email));
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loader.errorSnackBar(title: "Code Broke", message: e.toString());
    }
  }
}
