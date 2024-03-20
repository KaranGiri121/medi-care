import 'package:flutter/material.dart';
import 'package:medi_care/common/widgets/container/rounded_container.dart';
import 'package:medi_care/utils/constants/app_color.dart';
class PriceAddCartCard extends StatelessWidget {
  const PriceAddCartCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      radius: 12,
      padding: const EdgeInsets.all(10),
      color: AppColor.accentColor.withOpacity(0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("MRP "),
                  Text("\u20b945"),
                ],
              ),
              Text("Inclusive of all taxes")
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.accentColor,
                  side: BorderSide.none,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10)),
              onPressed: () {},
              child: const Text("Add to Cart"))
        ],
      ),);
  }
}
