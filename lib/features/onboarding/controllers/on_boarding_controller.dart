import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medi_care/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  final scrollController = ScrollController();

  Rx<int> currentPage = 0.obs;

  void updatePageIndicator(index) {
    currentPage.value = index;
  }

  void skipPage(){
    currentPage.value=3;
    pageController.animateToPage(3,curve: Curves.ease,duration: const Duration(milliseconds: 1000));
  }

  void prevPage(){
    if(currentPage.value>0){
      int page = currentPage.value-1;
      pageController.animateToPage(page, duration: const Duration(milliseconds: 500), curve: Curves.ease);
    }
  }
  void nextPage() {
    if(currentPage.value==3){
      final storage = GetStorage();
      storage.write("isFirstTime", false);
      Get.offAll(()=> const Login());
    }
    else{
      int page = currentPage.value+1;
      pageController.animateToPage(page,duration: const Duration(milliseconds: 500),curve: Curves.ease);
    }
  }
}