import 'package:flutter/material.dart';
import 'package:medi_care/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class HeadingWithDescription extends StatelessWidget {
  const HeadingWithDescription({
    super.key,
    required this.heading,
    required this.description,this.readMore = true, this.withButton=false, this.onPressed,
  });

  final String heading, description;
  final bool readMore,withButton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: AppSize.spaceItems / 2),
        if(!readMore)
          Text(description,overflow: TextOverflow.ellipsis,
            maxLines: 3,),
        if(readMore)
          ReadMoreText(
          description,
          trimMode: TrimMode.Line,
          trimLines: 3,
          trimCollapsedText: "  Show More",
          trimExpandedText: "  Less",
          moreStyle: const TextStyle(
              fontWeight: FontWeight.w800, fontSize: 14, color: Colors.blue),
          lessStyle: const TextStyle(
              fontWeight: FontWeight.w800, fontSize: 14, color: Colors.blue),
        ),
        if(withButton)
          TextButton(
            style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(bottom: 10, right: 10),
                splashFactory: NoSplash.splashFactory),
            onPressed: onPressed,
            child: Text(
              "Show More",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          )
      ],
    );
  }
}
