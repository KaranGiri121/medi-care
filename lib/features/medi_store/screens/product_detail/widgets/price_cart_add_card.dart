import 'package:flutter/material.dart';
import 'package:medi_care/common/widgets/container/rounded_container.dart';
import 'package:medi_care/features/medi_store/controllers/home_controller.dart';
import 'package:medi_care/features/medi_store/model/product_model.dart';
import 'package:medi_care/utils/constants/app_color.dart';
class PriceAddCartCard extends StatelessWidget {
  const PriceAddCartCard({
    super.key, required this.product,
  });

  final Product product;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      radius: 12,
      padding: const EdgeInsets.all(10),
      color: AppColor.accentColor.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("MRP "),
                  Text("\u20b9${product.price.toString()}"),
                ],
              ),
              const Text("Inclusive of all taxes")
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.accentColor,
                  side: BorderSide.none,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10)),
              onPressed: () {
                HomeController.instance.addProduct(product);
              },
              child: const Text("Add to Cart"))
        ],
      ),);
  }
}
