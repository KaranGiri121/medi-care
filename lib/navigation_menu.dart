import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/features/medi_store/screens/home/home_page.dart';
import 'package:medi_care/features/medi_store/screens/store/store.dart';
import 'package:medi_care/features/personalization/screens/setting/setting.dart';
import 'package:medi_care/utils/constants/app_color.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
          elevation: 1,
          backgroundColor: Colors.deepPurple.shade200,
          selectedIconTheme: const IconThemeData(color: AppColor.primary),
          selectedItemColor: AppColor.primary,
          unselectedIconTheme: IconThemeData(color: AppColor.darkColor),
          currentIndex: controller.index.value,
          onTap: (value) {
            controller.index.value = value;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.shopping_cart),
              label: "Store",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.user),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.index.value]),
    );
  }
}

class NavigationController extends GetxController {

  final Rx<int> index = 0.obs;

  final screens = [
    const HomePage(),
    const StoreScreen(),
    const PersonalizationScreen(),
  ];


}