import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/features/onboarding/controllers/on_boarding_controller.dart';
import 'package:medi_care/features/onboarding/screens/widgets/on_boarding_page.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/constant_string.dart';
import 'package:medi_care/utils/constants/image_path.dart';
import 'package:medi_care/utils/constants/sizes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (value) {
              controller.updatePageIndicator(value);
            },
            children: const [
              OnBoardingPage(
                  imagePath: ImagePath.onBoarding1,
                  heading: ConstantStrings.onBoardingString1,
                  bodyText: ConstantStrings.onBoardingLabel),
              OnBoardingPage(
                  imagePath: ImagePath.onBoarding2,
                  heading: ConstantStrings.onBoardingString2,
                  bodyText: ConstantStrings.onBoardingLabel2),
              OnBoardingPage(
                  imagePath: ImagePath.onBoarding3,
                  heading: ConstantStrings.onBoardingString3,
                  bodyText: ConstantStrings.onBoardingLabel3),
              OnBoardingPage(
                  imagePath: ImagePath.onBoarding4,
                  heading: ConstantStrings.onBoardingString4,
                  bodyText: ConstantStrings.onBoardingLabel4),
            ],
          ),
          Positioned(
            right: AppSize.defaultPadding,
            top: kToolbarHeight,
            child: TextButton(
              onPressed: () => controller.skipPage(),
              child: Text("Skip", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.defaultPadding),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: ()=>  controller.prevPage(),
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                      shape: const CircleBorder()
                    ),
                    child: const Icon(Iconsax.arrow_left),
                  ),
                  SmoothPageIndicator(
                    controller: controller.pageController,
                    count: 4,
                    effect: const ExpandingDotsEffect(dotHeight: 6, dotWidth: 12),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.nextPage();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      shape: const CircleBorder()
                    ),
                    child: const Icon(Iconsax.arrow_right_1),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
