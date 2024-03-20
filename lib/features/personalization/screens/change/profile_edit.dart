import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showArrow: true,
        leadingOnPressed: () => Get.back(),
        title: const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text("Profile Information"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSize.defaultPadding),
          child: Column(
            children: [
              Text(
                "You can change your profile information,Which reflect on your profile.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: AppSize.spaceSections),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelStyle:
                                    Theme.of(context).textTheme.bodyLarge,
                                labelText: "First Name",
                                prefixIcon: const Icon(Iconsax.user)),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelStyle:
                                    Theme.of(context).textTheme.bodyLarge,
                                labelText: "Last Name",
                                prefixIcon: const Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.spaceInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                          labelStyle: Theme.of(context).textTheme.bodyLarge,
                          labelText: "Username",
                          prefixIcon: const Icon(Iconsax.user_edit)),
                    ),
                    const SizedBox(height: AppSize.spaceInputFields),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Change Password",
                        ))
                  ],
                ),
              ),
              const SizedBox(height: AppSize.spaceItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Save Changes"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
