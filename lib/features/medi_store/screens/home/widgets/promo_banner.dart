import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_care/common/widgets/images/rounded_image.dart';
import 'package:medi_care/features/medi_store/controllers/home_controller.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key, required this.banner});

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        CarouselSlider(
          items:
              banner.map((e) => RoundedImage(imagePath: e)).toList(),
          options: CarouselOptions(
              onPageChanged: (index, reason) {
                controller.updatePageIndex(index);
              },
              viewportFraction: 1),
        ),
        const SizedBox(height: AppSize.spaceItems / 2),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banner.length; i++)
                Container(
                  width: controller.slideIndex.value == i ? 20 : 10,
                  height: 4,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      color: controller.slideIndex.value == i
                          ? AppColor.accentColor
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                )
            ],
          ),
        )
      ],
    );
  }
}
