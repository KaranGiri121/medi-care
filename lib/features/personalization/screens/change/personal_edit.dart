import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class PersonalEdit extends StatelessWidget {
  const PersonalEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showArrow: true,
        // leadingIcon: Iconsax.heart,
        leadingOnPressed: () => Get.back(),
        title: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text("Personal Information"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSize.defaultPadding),
          child: Column(
            children: [
              Text(
                "You can change your personal information",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: AppSize.spaceItems),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelStyle: Theme.of(context).textTheme.bodyLarge,
                          labelText: "Email",
                          prefixIcon: const Icon(Iconsax.direct_right)),
                    ),
                    const SizedBox(height: AppSize.spaceInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                          labelStyle: Theme.of(context).textTheme.bodyLarge,
                          labelText: "Phone Number",
                          prefixIcon: const Icon(Iconsax.call)),
                    ),
                    const SizedBox(height: AppSize.spaceInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                          labelStyle: Theme.of(context).textTheme.bodyLarge,
                          labelText: "Gender",
                          prefixIcon: const Icon(Iconsax.profile_circle)),
                    ),
                    const SizedBox(height: AppSize.spaceInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                          labelStyle: Theme.of(context).textTheme.bodyLarge,
                          labelText: "DOB",
                          prefixIcon: const Icon(Iconsax.calendar_tick)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.spaceSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){},child: const Text("Save Change"),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
