import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/common/widgets/container/rounded_container.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({
    super.key,
    required this.address,
    required this.pinCode,
    required this.isSelected,
  });

  final String address, pinCode;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      border: Border.all(color: AppColor.textDark),
      radius: 10,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: () {}, icon:  Icon(isSelected ? Iconsax.tick_circle : Iconsax.record)),
          const SizedBox(width: AppSize.spaceItems),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(address),
                const SizedBox(height: AppSize.spaceItems / 2),
                Text("Pin Code: $pinCode"),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit))
        ],
      ),
    );
  }
}
