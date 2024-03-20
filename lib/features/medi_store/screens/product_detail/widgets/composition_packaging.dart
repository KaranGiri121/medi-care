import 'package:flutter/material.dart';
import 'package:medi_care/utils/constants/sizes.dart';
class CompositionAndPackaging extends StatelessWidget {
  const CompositionAndPackaging({
    super.key, required this.composition, required this.packaging,
  });

  final String composition,packaging;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Composition",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: AppSize.spaceItems / 2),
              Text(composition),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Packaging",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: AppSize.spaceItems / 2),
              Text(packaging)
            ],
          ),
        )
      ],
    );
  }
}
