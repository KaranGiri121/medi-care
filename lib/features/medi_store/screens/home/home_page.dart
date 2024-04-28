import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:medi_care/common/widgets/container/curved_container.dart';
import 'package:medi_care/common/widgets/custom_clipper/small_curvededge.dart';
import 'package:medi_care/common/widgets/grid/grid_layout.dart';
import 'package:medi_care/common/widgets/product_card/vertical_product_card.dart';
import 'package:medi_care/common/widgets/text/section_heading.dart';
import 'package:medi_care/features/medi_store/model/product_model.dart';
import 'package:medi_care/features/medi_store/screens/home/widgets/promo_banner.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/image_path.dart';
import 'package:medi_care/utils/constants/sizes.dart';

import '../../controllers/home_controller.dart';
import 'widgets/header_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final controller = Get.put(HomeController());
    log(controller.productAdded[productList[0]]==null ? "Null" : "Not Null");
    return Scaffold(
      backgroundColor: AppColor.textDark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedContainer(
              clipper: SmallCurvedEdge(),
              color: AppColor.primary,
              child: const HeadContainer(isBackgroundDark: false),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSize.defaultPadding),
              child: Column(
                children: [
                  Column(
                    children: [
                      const PromoBanner(banner: [
                        ImagePath.banner1,
                        ImagePath.banner2,
                        ImagePath.banner3,
                        ImagePath.bannerHD
                      ]),
                      const SizedBox(
                        height: AppSize.spaceItems,
                      ),
                      const SectionHeading(
                        title: "Trending Medicine",
                        showExtra: true,
                        isBackgroundDark: true,
                      ),
                      GridLayout(
                        itemCount: productList.length,
                        itemBuilder: (p0, i) {
                          const quantity = 0;
                          return VerticalProductCard(
                            onTapHeart: () {
                              productList[i].favorite.value = !productList[i].favorite.value;
                            },
                            onTapAdd: ()=> controller.addProduct(productList[i]),
                            product:productList[i],
                            quantity: quantity,
                          );
                        },
                      )
                    ],
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
