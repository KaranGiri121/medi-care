import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/common/widgets/grid/grid_layout.dart';
import 'package:medi_care/common/widgets/product_card/vertical_product_card.dart';
import 'package:medi_care/features/medi_store/controllers/home_controller.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showArrow: true,
        title: Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text("Wishlist"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultPadding),
          child: Column(
            children: [
              Obx(
                () => GridLayout(
                  itemCount: HomeController.instance.favorite.value,
                  itemBuilder: (p0, i) {
                    final product = HomeController.instance.favoriteProduct.keys
                        .toList()[i];
                    final quantity = HomeController
                        .instance.favoriteProduct.values
                        .toList()[i];
                    return VerticalProductCard(
                      product: product,
                      quantity: quantity,
                      onTapHeart: () {
                        HomeController.instance.removeFavorite(product);
                        // product.favorite.value = !product.favorite.value;
                      },
                      onTapAdd: () =>
                          HomeController.instance.addProduct(product),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
