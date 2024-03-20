import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';
class BottomNavWithCart extends StatelessWidget {
  const BottomNavWithCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.defaultPadding,vertical: 5),
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
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColor.iconDark
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Iconsax.minus,color: Colors.black,)),
                    const SizedBox(width: AppSize.spaceItems),
                    Text(
                      "1",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
                    ),
                    const SizedBox(width: AppSize.spaceItems),
                    IconButton(onPressed: (){}, icon: const Icon(Iconsax.add,color: Colors.white,size: 20,)),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: AppSize.spaceItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\u20b9 45",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.white),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide.none,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                onPressed: () {},
                child: const Text("Add To Cart"),
              )
            ],
          )
        ],
      ),
    );
  }
}
