import 'package:flutter/material.dart';
import 'package:medi_care/common/widgets/container/rounded_container.dart';
import 'package:medi_care/common/widgets/images/rounded_image.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/image_path.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class ProductImageAndPrice extends StatelessWidget {
  const ProductImageAndPrice({

    super.key, this.rxImage=false,
  });
  final bool rxImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RoundedContainer(
          width: double.infinity,
          height: 200,
          radius: 12,
          color: AppColor.darkColor,
          padding: const EdgeInsets.all(AppSize.defaultPadding),
          child: const RoundedImage(
            imagePath: "assets/images/medicine/1.png",
            radius: 10,
          ),
        ),
        if(rxImage)
        const Positioned(
          top: 10,
          left: 10,
          child: RoundedContainer(
            padding: EdgeInsets.all(4),
            width: 24,
            height: 24,
            color: Colors.blueAccent,
            radius: 12,
            child: RoundedImage(imagePath: ImagePath.iconRX),
          )
        ),
        Positioned(
          bottom: 15,
          right: 10,
          child: RoundedContainer(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            radius: 6,
            color: AppColor.primary,
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: AppColor.textDark),
                children: [
                  TextSpan(
                      text: "\u20b9 45",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: 12)),
                  TextSpan(
                      text: "/tablet",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
