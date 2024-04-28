import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/common/widgets/bottom/bottom_price_card.dart';
import 'package:medi_care/common/widgets/product_card/horizontal_card.dart';
import 'package:medi_care/features/medi_store/controllers/home_controller.dart';
import 'package:medi_care/utils/constants/sizes.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController.instance.check();
    return Scaffold(
      appBar: const CustomAppBar(
        showArrow: true,
        title: Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text("Cart"),
        ),
      ),
      bottomNavigationBar: const BottomPriceCard(),
      // bottomSheet: const BottomPriceCard(),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSize.defaultPadding),
          child: Column(
            children: [
              Obx(
                () => ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: HomeController.instance.productAdded.length,
                  itemBuilder: (context, index) {
                    final product = HomeController.instance.productAdded.keys
                        .toList()[index];
                    final quantity = HomeController.instance.productAdded.values
                        .toList()[index];
                    return HorizontalCard(product: product, quantity: quantity);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
