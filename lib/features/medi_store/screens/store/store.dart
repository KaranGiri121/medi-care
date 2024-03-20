import 'package:flutter/material.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/common/widgets/container/search_container.dart';
import 'package:medi_care/common/widgets/text/section_heading.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';
import 'package:medi_care/utils/constants/constant_string.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // {
    //   print(ConstantStrings.listOfMedicine[i]);
    //   print(ConstantStrings.listOfMedicine[i+1]);
    // }
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchContainer(searchText: "Search By Name Or Symptoms"),
            const SizedBox(height: AppSize.spaceSections),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.defaultPadding),
              child: Column(
                children: [
                  const SectionHeading(
                      title: "Medicine By Alphabet", showExtra: true),
                  for (int i = 0;
                      i < ConstantStrings.listOfMedicine.length;
                      i += 2)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(
                                    AppSize.iconExtraSmall),
                                backgroundColor: AppColor.darkColor,
                              ),
                              onPressed: () {},
                              child: Text(
                                ConstantStrings.listOfMedicine[i],
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        overflow: TextOverflow.ellipsis,
                                        color: AppColor.primary),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(
                                    AppSize.iconExtraSmall),
                                backgroundColor: AppColor.darkColor,
                              ),
                              onPressed: () {},
                              child: Text(
                                ConstantStrings.listOfMedicine[i + 1],
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        overflow: TextOverflow.ellipsis,
                                        color: AppColor.primary),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SectionHeading(
                      title: "Medicine By Disease", showExtra: true),
                  for (int i = 0;
                      i < ConstantStrings.listOfMedicine.length;
                      i += 2)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(
                                    AppSize.iconExtraSmall),
                                backgroundColor: AppColor.darkColor,
                              ),
                              onPressed: () {},
                              child: Text(
                                ConstantStrings.listOfDisease[i],
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        overflow: TextOverflow.ellipsis,
                                        color: AppColor.primary),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(
                                    AppSize.iconExtraSmall),
                                backgroundColor: AppColor.darkColor,
                              ),
                              onPressed: () {},
                              child: Text(
                                ConstantStrings.listOfDisease[i + 1],
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        overflow: TextOverflow.ellipsis,
                                        color: AppColor.primary),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
