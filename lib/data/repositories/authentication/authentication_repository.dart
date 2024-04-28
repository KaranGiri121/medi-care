import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medi_care/features/authentication/screens/login/login.dart';
import 'package:medi_care/features/authentication/screens/signup/verify_email.dart';
import 'package:medi_care/features/onboarding/screens/on_boarding.dart';
import 'package:medi_care/navigation_menu.dart';
import 'package:medi_care/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:medi_care/utils/exceptions/firebase_exceptions.dart';
import 'package:medi_care/utils/exceptions/format_exceptions.dart';
import 'package:medi_care/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepo extends GetxController {
  static AuthenticationRepo get instance => Get.find();

  final deviceStorage = GetStorage();

  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;

    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmail(email: _auth.currentUser?.email));
      }
    } else {
      deviceStorage.writeIfNull("isFirstTime", true);
      deviceStorage.read("isFirstTime") == true
          ? Get.offAll(() => const OnBoarding())
          : Get.offAll(() => const Login());
    }
  }

  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthExceptionHandler(e.code).message;
    } on FirebaseException catch (e) {
      throw FirebaseExceptionHandler(e.code).message;
    } on FormatException {
      throw const FormatExceptionHandler();
    } on PlatformException catch (e) {
      throw PlatformExceptionHandler(e.code).message;
    } catch (e) {
      throw "Something Went Wrong";
    }
  }

  Future<void> sendEmailVerification() async{
    try{
      await _auth.currentUser!.sendEmailVerification();
    }on FirebaseAuthException catch (e) {
      throw FirebaseAuthExceptionHandler(e.code).message;
    } on FirebaseException catch (e) {
      throw FirebaseExceptionHandler(e.code).message;
    } on FormatException {
      throw const FormatExceptionHandler();
    } on PlatformException catch (e) {
      throw PlatformExceptionHandler(e.code).message;
    } catch (e) {
      throw "Something Went Wrong";
    }
  }

  Future<UserCredential> loginWithEmailAndPassword(String email,String password) async{
    try{
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (e) {
      throw FirebaseAuthExceptionHandler(e.code).message;
    } on FirebaseException catch (e) {
      throw FirebaseExceptionHandler(e.code).message;
    } on FormatException {
      throw const FormatExceptionHandler();
    } on PlatformException catch (e) {
      throw PlatformExceptionHandler(e.code).message;
    } catch (e) {
      throw "Something Went Wrong";
    }
  }



  Future<void> logout() async {
    try {
      await _auth.signOut();
      Get.offAll(() => const Login());
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthExceptionHandler(e.code).message;
    } on FirebaseException catch (e) {
      throw FirebaseExceptionHandler(e.code).message;
    } on FormatException {
      throw const FormatExceptionHandler();
    } on PlatformException catch (e) {
      throw PlatformExceptionHandler(e.code).message;
    } catch (e) {
      throw "Something Went Wrong";
    }
  }
}
