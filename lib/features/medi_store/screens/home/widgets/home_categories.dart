import 'package:flutter/material.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
    this.isBackgroundDark = false,
  });

  final bool isBackgroundDark;

  @override
  Widget build(BuildContext context) {
    List<String> categoriesImage = [
      "assets/icons/categories/medicine.png",
      "assets/icons/categories/blood_test.png",
      "assets/icons/categories/test.png",
      "assets/icons/categories/rx.png"
      ,"assets/icons/categories/stethoscope.png"
    ];
    List<String> categoriesName = [
      "Medicine",
      "Blood Test",
      "Test",
      "Prescription",
      "Consultation",
    ];
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: AppSize.spaceItems),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.borderColor),
                    borderRadius: BorderRadius.circular(60),
                    color: isBackgroundDark ? Colors.white : AppColor.darkColor,
                  ),
                  width: 56,
                  height: 56,
                  padding: const EdgeInsets.all(12),
                  child: Image(
                    image:  AssetImage(categoriesImage[index]),
                    fit: BoxFit.cover,
                    color: isBackgroundDark ? AppColor.darkColor : Colors.white,
                  ),
                ),
                const SizedBox(height: AppSize.spaceItems / 2),
                SizedBox(
                  width: 60,
                  child: Text(
                    categoriesName[index],
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: isBackgroundDark
                            ? Colors.white
                            : AppColor.darkColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
