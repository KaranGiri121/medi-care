import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/common/widgets/container/rounded_container.dart';
import 'package:medi_care/common/widgets/images/rounded_image.dart';
import 'package:medi_care/features/medi_store/controllers/home_controller.dart';
import 'package:medi_care/features/medi_store/model/product_model.dart';
import 'package:medi_care/utils/constants/app_color.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard(
      {super.key, required this.product, required this.quantity});

  final Product product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      border: Border.all(color: AppColor.borderColor),
      margin: const EdgeInsets.only(bottom: 6),
      radius: 12,
      padding: const EdgeInsets.only(left: 12, top: 12, bottom: 12),
      // color: Colors.red,
      child: Row(
        children: [
           Expanded(
            flex: 2,
            child: RoundedImage(
              imagePath: product.image,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 3,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  product.companyName,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  "\u20b9 ${product.price}",
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      HomeController.instance.removeProduct(product);
                    },
                    icon: const Icon(Iconsax.minus),
                  ),
                  Text(quantity.toString()),
                  IconButton(
                    onPressed: () {
                      HomeController.instance.addProduct(product);
                    },
                    icon: const Icon(Iconsax.add),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
