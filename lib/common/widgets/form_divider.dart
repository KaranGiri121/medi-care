import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(child: Divider(indent: 20,endIndent: 30,)),
        Text("Or"),
        Flexible(child: Divider(endIndent: 20,indent: 30,)),
      ],
    );
  }
}

