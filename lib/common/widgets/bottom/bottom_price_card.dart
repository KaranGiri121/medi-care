import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

import '../../../features/medi_store/controllers/home_controller.dart';

class BottomPriceCard extends StatelessWidget {
  const BottomPriceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSize.defaultPadding, vertical: 5),
      decoration: BoxDecoration(
          color: AppColor.darkColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.spaceItems),
          Text(
            "Total",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: AppColor.primary),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "\u20b9 ${HomeController.instance.cartPrice.value}",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide.none,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                onPressed: () {},
                child: const Text("Buy Now"),
              )
            ],
          ),
          const SizedBox(height: AppSize.spaceItems),
        ],
      ),
    );
  }
}
