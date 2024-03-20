import 'package:flutter/material.dart';
import 'package:medi_care/common/widgets/form_divider.dart';
import 'package:medi_care/common/widgets/social_media/social_login.dart';
import 'package:medi_care/utils/constants/sizes.dart';

import 'widgets/sign_up_form.dart';
import 'widgets/sign_up_header.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: AppSize.appBarHeight,
            left: AppSize.defaultPadding,
            right: AppSize.defaultPadding,
            bottom: AppSize.defaultPadding),
        child: Column(
          children: [
            SignUpHeader(),
            SizedBox(height: AppSize.spaceItems),
            SignUpForm(),
            SizedBox(height: AppSize.spaceItems),
            FormDivider(),
            SizedBox(height: AppSize.spaceItems),
            SocialLogin(),
          ],
        ),
      ),
    );
  }
}



