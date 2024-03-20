import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:medi_care/features/personalization/models/user_model.dart';
import 'package:medi_care/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:medi_care/utils/exceptions/firebase_exceptions.dart';
import 'package:medi_care/utils/exceptions/format_exceptions.dart';
import 'package:medi_care/utils/exceptions/platform_exceptions.dart';

class UserRepo extends GetxController {
  static UserRepo get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel userData) async {
    try{
      await _db.collection("User").doc(userData.id).set(userData.toJson());
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
}
