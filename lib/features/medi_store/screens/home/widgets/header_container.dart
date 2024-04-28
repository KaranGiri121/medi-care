import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/common/widgets/container/search_container.dart';
import 'package:medi_care/common/widgets/text/section_heading.dart';
import 'package:medi_care/features/medi_store/screens/cart/cart.dart';
import 'package:medi_care/features/medi_store/screens/home/widgets/home_categories.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class HeadContainer extends StatelessWidget {
  const HeadContainer({super.key, this.isBackgroundDark = false});

  final bool isBackgroundDark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          isBackgroundDark: isBackgroundDark,
          leadingIcon: Iconsax.user,
          title: ListTile(
            title: Text(
              "Hi, Karan",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: isBackgroundDark ? Colors.white : null),
            ),
            subtitle: Text(
              "May You Always Be Healthy",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: isBackgroundDark ? Colors.white : null),
            ),
          ),
          action: [
            IconButton(
                onPressed: () => Get.to(()=> const CartScreen()),
                icon: Icon(Iconsax.shopping_cart,
                    color: isBackgroundDark ? Colors.white : null))
          ],
        ),
        const SizedBox(height: AppSize.spaceItems),
        SearchContainer(
          searchText: 'Search Medicine',
          isBackgroundDark: isBackgroundDark,
        ),
        const SizedBox(height: AppSize.spaceItems),
        Padding(
          padding: const EdgeInsets.only(left: AppSize.defaultPadding),
          child: Column(
            children: [
              SectionHeading(
                title: 'Categories',
                isBackgroundDark: isBackgroundDark,
              ),
              const SizedBox(height: AppSize.spaceItems),
              HomeCategories(
                isBackgroundDark: isBackgroundDark,
              ),
              const SizedBox(height: AppSize.spaceItems),
            ],
          ),
        ),
      ],
    );
  }
}
