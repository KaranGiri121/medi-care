import 'package:flutter/material.dart';
import 'package:medi_care/common/widgets/container/rounded_container.dart';
import 'package:medi_care/common/widgets/images/rounded_image.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key, required this.medicineName, required this.status, required this.estDate, required this.imagePath,
  });

  final String medicineName,status,estDate,imagePath;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      height: 100,
      width: double.infinity,
      color: AppColor.darkColor.withOpacity(0.2),
      radius: 10,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(
          left: AppSize.defaultPadding,
          right: AppSize.defaultPadding,
          bottom: AppSize.defaultPadding / 2),
      child: Row(
        children: [
          RoundedContainer(
            padding: const EdgeInsets.all(10),
            color: AppColor.darkColor,
            radius: 10,
            child:  RoundedImage(
              imagePath: imagePath,
            ),
          ),
          const SizedBox(width: AppSize.spaceItems),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                medicineName,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Status : ",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(fontSize: 14)),
                    TextSpan(
                        text: status,
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ),
              RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Est Date : ",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(fontSize: 14)),
                    TextSpan(
                        text: estDate,
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ),
              // Text("Date of Delivery")
            ],
          )
        ],
      ),
    );
  }
}
