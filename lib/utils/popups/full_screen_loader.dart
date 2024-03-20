import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_care/common/widgets/loaders/animation_loader.dart';
import 'package:medi_care/utils/constants/app_color.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (context) {
        return PopScope(
          canPop: false,
          child: Container(
            color: AppColor.primary,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 250),
                AnimationLoaderWidget(
                  text: text,
                  animation: animation,
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
