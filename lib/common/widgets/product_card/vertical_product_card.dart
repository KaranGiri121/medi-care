import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/common/widgets/container/circular_icon.dart';
import 'package:medi_care/common/widgets/images/rounded_image.dart';
import 'package:medi_care/features/medi_store/screens/product_detail/product_detail.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

import '../../../features/medi_store/model/product_model.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({
    super.key,
    this.isDarkBackground = true,
    this.onTapAdd,
    required this.product,
    this.onTapHeart, required this.quantity,
  });

  final bool isDarkBackground;
  final Product product;
  final int quantity;
  final void Function()? onTapAdd;
  final void Function()? onTapHeart;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() {
        return ProductDetail(
          quantity: quantity,
          product: product,
        );
      }),
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: isDarkBackground ? AppColor.primary : AppColor.darkColor,
          borderRadius: BorderRadius.circular(12),
          // border: Border.all(color: AppColor.textDark)
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: isDarkBackground
                      ? AppColor.darkColor
                      : AppColor.primary.withOpacity(0.91),
                  borderRadius: BorderRadius.circular(12)),
              child: Stack(
                children: [
                  RoundedImage(imagePath: product.image),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Obx(
                      () => CircularIcon(
                        onPressed: onTapHeart,
                        icon: Iconsax.heart5,
                        color:
                            product.favorite.value ? Colors.red : Colors.grey,
                        backgroundColor: AppColor.textDark,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.spaceItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: isDarkBackground ? null : AppColor.primary),
                  ),
                  Text(
                    "By ${product.companyName}",
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: isDarkBackground ? null : AppColor.primary),
                  ),
                  const SizedBox(height: AppSize.spaceItems / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\u20b9 ${product.price.toString()}",
                        style: TextStyle(
                            color: isDarkBackground ? null : AppColor.primary),
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: onTapAdd,
                          child: Text(
                            "Add",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: isDarkBackground
                                        ? null
                                        : AppColor.primary),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
