import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/utils/constants/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.title,
      this.action,
      this.showArrow = false,
      this.leadingIcon,
      this.leadingOnPressed,
      this.isBackgroundDark = false,
      this.transparent = false,
      this.centerTitle = false,this.dark=false});

  final Widget? title;
  final List<Widget>? action;
  final bool showArrow;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;
  final bool isBackgroundDark, centerTitle;
  final bool transparent,dark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppBar(
        systemOverlayStyle: dark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: showArrow
            ? IconButton(
          padding: EdgeInsets.zero,
                onPressed: () => Get.back(),
                icon: Icon(
                  Iconsax.arrow_left,
                  color: isBackgroundDark ? Colors.white : null,
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: Icon(
                      leadingIcon,
                      color: isBackgroundDark
                          ? Colors.white
                          : AppColor.darkColor,
                    ),
                  )
                : null,
        leadingWidth: 20,
        title: title,
        centerTitle: centerTitle,
        actions: action,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
