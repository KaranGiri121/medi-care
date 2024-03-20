import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/features/medi_store/screens/product_detail/widgets/brand_with_seller.dart';
import 'package:medi_care/features/medi_store/screens/product_detail/widgets/composition_packaging.dart';
import 'package:medi_care/features/medi_store/screens/product_detail/widgets/product_image_price.dart';
import 'package:medi_care/utils/constants/sizes.dart';

import 'widgets/bottom_nav_cart.dart';
import 'widgets/heading_with_description.dart';
import 'widgets/price_cart_add_card.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text("Detail"),
        leadingIcon: Iconsax.arrow_left,
        centerTitle: true,
        action: [IconButton(onPressed: () {}, icon: const Icon(Iconsax.heart))],
      ),
      bottomNavigationBar: const BottomNavWithCart(),
      body: const SingleChildScrollView(
        padding: EdgeInsets.only(
            left: AppSize.defaultPadding,
            right: AppSize.defaultPadding,
            top: AppSize.defaultPadding - 14,
            bottom: AppSize.defaultPadding),
        child: Column(
          children: [
            ProductImageAndPrice(
              rxImage: true,
            ),
            SizedBox(height: AppSize.spaceItems),
            BrandWithSeller(
                brand: 'Amoxicillin',
                seller: "By Pharmacies Lafayette",
                sold: "49",
                star: "4.3"),
            SizedBox(height: AppSize.spaceItems),
            CompositionAndPackaging(
                composition: 'Amoxicillin',
                packaging: "10 Strips x 10 Tablets"),
            SizedBox(height: AppSize.spaceItems),
            PriceAddCartCard(),
            SizedBox(height: AppSize.spaceItems),
            HeadingWithDescription(
              heading: "Uses For",
              description:
                  "This Is The Description Of the product and it can go unto max 4 lines This Is The Description Of the product and it can go unto max 4 lines",
            ),
            SizedBox(height: AppSize.spaceSections),
            HeadingWithDescription(
              heading: "Description",
              description:
                  "Dulot 30 Tablet is used in the treatment of depression, anxiety disorder, diabetic nerve pain, fibromyalgia (a condition in which there are generalized pain and tenderness in the body), neuropathic pain, and stress urinary incontinence.                    Dulot 30 Tablet works by increasing the level of chemical messengers (serotonin and noradrenaline) in the brain that have a calming effect on the brain and relax the nerves, thus treating your illness. It may be taken with or without food. It is advised to take this medicine at a fixed time each day to maintain a consistent level in the blood. If you miss any doses, take it as soon as you remember. Do not skip any doses and finish the full course of treatment even if you feel better. This medication mustn't be stopped suddenly as it may worsen your symptoms.Some common side effects of this medicine include nausea, headache, and dry mouth. It even causes dizziness and sleepiness, so do not drive or do anything that requires mental focus until you know how this medicine affects you. However, these side effects are temporary and usually resolve on their own in some time. Please consult your doctor if these do not subside or bother you.Before taking Dulot 30 Tablet, inform your doctor if you have any problems with your kidneys, heart, liver, or have a history of seizures (epilepsy or fits). Inform your doctor if you develop any unusual changes in mood or behavior, new or worsening depression, or if you have any suicidal thoughts.",
              readMore: false,
              withButton: true,
            ),
            SizedBox(height: AppSize.spaceItems),
            HeadingWithDescription(
              heading: 'Direction Of Use',
              description:
                  "Take this medicine in the dose and duration as advised by your doctor. Dissolve it in a glass of water before taking it. Dolonex DT 20mg Tablet is to be taken with food.",
            ),
          ],
        ),
      ),
    );
  }
}

