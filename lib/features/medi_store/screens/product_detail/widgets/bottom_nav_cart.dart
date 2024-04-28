import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/features/medi_store/controllers/home_controller.dart';
import 'package:medi_care/features/medi_store/model/product_model.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class BottomNavWithCart extends StatelessWidget {
  const BottomNavWithCart({
    super.key,
    required this.product,
    required this.quantity,
  });

  final Product product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    RxInt amount = (-1).obs;
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Choose Quantity",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColor.iconDark),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        if (amount.value == -1) {
                          amount.value =
                              HomeController.instance.quantity(product);
                        }
                        amount.value -= 1;
                      },
                      icon: const Icon(
                        Iconsax.minus,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: AppSize.spaceItems),
                    Obx(
                      () => Text(
                        amount.value == -1
                            ? HomeController.instance
                                .quantity(product)
                                .toString()
                            : (amount.value).toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: AppSize.spaceItems),
                    IconButton(
                      onPressed: () {
                        log(amount.value.toString());
                        if (amount.value == -1) {
                          amount.value =
                              HomeController.instance.quantity(product);
                        }

                        amount.value += 1;
                      },
                      icon: const Icon(
                        Iconsax.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: AppSize.spaceItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "\u20b9 ${product.price * (amount.value == -1 ? HomeController.instance.quantity(product) : amount.value)}",
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
                onPressed: () {
                    if(amount.value<=0) {
                      HomeController.instance.productAdded.removeWhere((key, value) => key==product);
                    } else {
                      HomeController.instance.productAdded[product]=amount.value;
                    }
                },
                child: const Text("Add To Cart"),
              )
            ],
          )
        ],
      ),
    );
  }
}
