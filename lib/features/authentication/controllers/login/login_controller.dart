import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medi_care/data/repositories/authentication/authentication_repository.dart';
import 'package:medi_care/utils/constants/constant_string.dart';
import 'package:medi_care/utils/helper/network_manager.dart';
import 'package:medi_care/utils/popups/full_screen_loader.dart';
import 'package:medi_care/utils/popups/loader.dart';

class LoginController extends GetxController{
  static LoginController get instance => Get.find();

  final rememberMe = false.obs;
  final passwordHide = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    email.text = localStorage.read("REMEMBER_EMAIL") ?? "";
    password.text = localStorage.read("REMEMBER_PASSWORD") ?? "";
    // print(localStorage.read("REMEMBER_PASSWORD") ?? "Nothing");
  }
  
  emailAndPasswordLogin() async{
    try{
      FullScreenLoader.openLoadingDialog("Loggin You In.....", ConstantStrings.loaderAnimation);

      final isConnected = await NetworkManager.instance.isConnected();

      if(!isConnected){
        FullScreenLoader.stopLoading();
        return ;
      }

      if(!loginFormKey.currentState!.validate()){
        FullScreenLoader.stopLoading();
        return ;
      }

      if(rememberMe.value){
        localStorage.write("REMEMBER_EMAIL", email.text.trim());
        localStorage.write("REMEMBER_PASSWORD", password.text.trim());
      }else{
        localStorage.write("REMEMBER_EMAIL", "");
        localStorage.write("REMEMBER_PASSWORD", "");
      }

     final userCredentials = await AuthenticationRepo.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      FullScreenLoader.stopLoading();
      AuthenticationRepo.instance.screenRedirect();
      
    }catch (e){
      FullScreenLoader.stopLoading();
      Loader.errorSnackBar(title: "Code Break",message: e.toString());
    }
  }


}