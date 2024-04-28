import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class HeadingWithDescription extends StatelessWidget {
  const HeadingWithDescription({
    super.key,
    required this.heading,
    required this.description,
    this.withButton = false,
    this.onPressed,
  });

  final String heading, description;
  final bool withButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    var readMore = false.obs;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: AppSize.spaceItems / 2),
        Obx(
          () => Column(
            children: [
              if (!readMore.value)
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              if (readMore.value) Text(description),
            ],
          ),
        ),
        //   ReadMoreText(
        //   description,
        //   trimMode: TrimMode.Line,
        //   trimLines: 3,
        //   trimCollapsedText: "",
        //   trimExpandedText: "",
        //   moreStyle: const TextStyle(
        //       fontWeight: FontWeight.w800, fontSize: 14, color: Colors.blue),
        //   lessStyle: const TextStyle(
        //       fontWeight: FontWeight.w800, fontSize: 14, color: Colors.blue),
        // ),
        if (withButton)
          Obx(
            () => TextButton(
              style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(bottom: 10, right: 10),
                  splashFactory: NoSplash.splashFactory),
              onPressed: () {
                log("Show More is Pressed");
                readMore.value = !readMore.value;
              },
              child: Text(
                readMore.value ?"Show Less" :"Show More",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          )
      ],
    );
  }
}
