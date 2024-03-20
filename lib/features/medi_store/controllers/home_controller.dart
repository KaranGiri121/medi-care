import 'package:get/get.dart';

class HomeController extends GetxController{
  Rx<int> slideIndex = 0.obs;

  void updatePageIndex(index){
    slideIndex.value= index;
  }



}