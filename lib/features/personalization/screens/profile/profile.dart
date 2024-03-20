import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/common/widgets/container/rounded_container.dart';
import 'package:medi_care/common/widgets/images/rounded_image.dart';
import 'package:medi_care/common/widgets/text/section_heading.dart';
import 'package:medi_care/features/personalization/screens/change/personal_edit.dart';
import 'package:medi_care/features/personalization/screens/change/profile_edit.dart';
import 'package:medi_care/features/personalization/screens/profile/widget/profile_tile.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
        showArrow: true,
        leadingOnPressed: ()=> Get.back(),
        title: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text("Profile"),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSize.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  RoundedContainer(
                    width: 80,
                    height: 80,
                    color: AppColor.darkColor,
                    radius: 100,
                    padding: const EdgeInsets.all(20),
                    child: const RoundedImage(
                        imagePath: "assets/images/medicine/1.png"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Change Your Profile Picture"),
                  ),
                ],
              ),
            ),
            const Divider(),
            SectionHeading(
              title: "Profile Information",
              showExtra: true,
              buttonText: "Edit",
              onPressed: () => Get.to(() => const ProfileEdit()),
            ),
            const SizedBox(height: AppSize.spaceItems / 2),
            const ProfileTile(tag: "Name", value: "Karan Giri"),
            const ProfileTile(tag: "Username", value: "karangiri121@gmail.com"),
            const SizedBox(height: AppSize.spaceItems / 2),
            const Divider(),
            SectionHeading(
              title: "Personal Information",
              buttonText: "Edit",
              showExtra: true,
              onPressed: () => Get.to(() => const PersonalEdit()),
            ),
            const SizedBox(height: AppSize.spaceItems / 2),
            const ProfileTile(tag: "UserID", value: "kasnjds"),
            const ProfileTile(tag: "Email", value: "karangiri121@gmail.com"),
            const ProfileTile(tag: "Phone Number", value: "8758865947"),
            const ProfileTile(tag: "Gender", value: "Male"),
            const ProfileTile(tag: "DOB", value: "26-10-2001"),
            const SizedBox(height: AppSize.spaceItems / 2),
            const Divider(),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Delete Account",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
