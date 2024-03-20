import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';
class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, required this.searchText, this.onTap,this.isBackgroundDark=false,
  });

  final String searchText;
  final void Function()? onTap;
  final bool isBackgroundDark;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSize.defaultPadding),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isBackgroundDark ? AppColor.primary:AppColor.iconDark.withOpacity(0.5),
            border: Border.all(color: AppColor.borderColor),
            borderRadius: BorderRadius.circular(16),
          ),
          child:  Row(
            children: [
              const Icon(Iconsax.search_normal),
              const SizedBox(width: AppSize.spaceItems),
              Text(searchText,style: Theme.of(context).textTheme.bodyLarge,),
            ],
          ),
        ),
      ),
    );
  }
}
