import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/common/widgets/text/section_heading.dart';
import 'package:medi_care/features/personalization/screens/address/address.dart';
import 'package:medi_care/features/personalization/screens/order/order.dart';
import 'package:medi_care/features/personalization/screens/profile/profile.dart';
import 'package:medi_care/features/personalization/screens/wishlist/wishlist.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class PersonalizationScreen extends StatelessWidget {
  const PersonalizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: AppColor.darkColor),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomAppBar(
                    dark: true,
                    title: Text("Account",
                        style: Theme
                            .of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: AppColor.primary)),
                    action: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.logout,
                            color: AppColor.primary,
                          ))
                    ],
                  ),
                  const SizedBox(height: AppSize.spaceItems),
                  InkWell(
                    onTap: () => Get.to(() => const Profile()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                            radius: 24,
                            child: CircleAvatar(
                              child: Text("KG"),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Karan Giri",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: AppColor.primary),
                            ),
                            Text(
                              "Karangiri121@gmail.com",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: AppColor.primary),
                            ),
                          ],
                        ),
                        const Icon(
                          Iconsax.edit,
                          color: AppColor.primary,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.spaceSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: AppSize.defaultPadding,
                  right: AppSize.defaultPadding,
                  top: AppSize.spaceItems),
              child: Column(
                children: [
                  const SectionHeading(title: "Account Setting"),
                  const SizedBox(height: AppSize.spaceItems),
                  ListTile(
                    onTap: () => Get.to(() => const OrderScreen()),
                    leading: const Icon(Iconsax.box),
                    title: Text(
                      "My Order",
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleMedium,
                    ),
                    subtitle: Text(
                      "Check Your Order Status",
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodySmall,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: () => Get.to(() => const WishlistScreen()),
                    leading: const Icon(Iconsax.menu),
                    title: Text(
                      "My Wishlist",
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleMedium,
                    ),
                    subtitle: Text(
                      "Checkout Your Wishlist",
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodySmall,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    onTap: ()=> Get.to(()=> const AddressScreen()),
                    leading: const Icon(Iconsax.add),
                    title: Text(
                      "Address",
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleMedium,
                    ),
                    subtitle: Text(
                      "Set Delivery Address",
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodySmall,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Iconsax.receipt),
                    title: Text(
                      "Your LabTest",
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleMedium,
                    ),
                    subtitle: Text(
                      "Checkout Your Lab Report",
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodySmall,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Iconsax.card),
                    title: Text(
                      "Payment Method",
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleMedium,
                    ),
                    subtitle: Text(
                      "Select Your Payment Method",
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodySmall,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Iconsax.profile_add),
                    title: Text(
                      "Invite Friends",
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleMedium,
                    ),
                    subtitle: Text(
                      "Invite your friend",
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.defaultPadding),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Logout"),
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.defaultPadding,
            )
          ],
        ),
      ),
    );
  }
}
