import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/common/widgets/row/icon_with_string.dart';
import 'package:medi_care/utils/constants/sizes.dart';
class BrandWithSeller extends StatelessWidget {
  const BrandWithSeller({
    super.key, required this.brand, required this.seller, required this.sold, required this.star,
  });

  final String brand,seller,sold,star;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(brand, style: Theme
            .of(context)
            .textTheme
            .headlineMedium,),
        const SizedBox(height: AppSize.spaceItems/2),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconWithString(icon: Iconsax.shop, text: seller,),
            IconWithString(icon: CupertinoIcons.cart, text: "Sold($sold)"),
            IconWithString(icon: Iconsax.star1, text: star,color: Colors.yellow,size: 20,)
          ],
        )
      ],
    );
  }
}
