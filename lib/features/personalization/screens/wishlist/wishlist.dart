import 'package:flutter/material.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/common/widgets/grid/grid_layout.dart';
import 'package:medi_care/common/widgets/product_card/vertical_product_card.dart';
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
              GridLayout(
                itemCount: 5,
                itemBuilder: (p0, p1) {
                  return const VerticalProductCard(
                    isDarkBackground: false,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
