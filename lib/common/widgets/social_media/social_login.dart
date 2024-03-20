import 'package:flutter/material.dart';
import 'package:medi_care/utils/constants/image_path.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: AppSize.iconLarge,
              // height: AppSize.iconLarge,
              image: AssetImage(ImagePath.googleIcon),
            ),
          ),
        ),
        const SizedBox(width: AppSize.spaceSections),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: AppSize.iconLarge,
              // height: AppSize.iconLarge,
              image: AssetImage(ImagePath.appleIcon),
            ),
          ),
        )
      ],
    );
  }
}
