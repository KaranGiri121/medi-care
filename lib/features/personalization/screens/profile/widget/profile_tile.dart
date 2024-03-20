import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.tag,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
    this.onPressed,
  });

  final String tag, value;
  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSize.spaceItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                tag,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
                flex: 5,
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                )),
            Icon(
              icon,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
