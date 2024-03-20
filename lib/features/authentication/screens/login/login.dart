import 'package:flutter/material.dart';
import 'package:medi_care/common/widgets/app_bar/custom_appbar.dart';
import 'package:medi_care/common/widgets/form_divider.dart';
import 'package:medi_care/features/authentication/screens/login/widgets/login_header.dart';
import 'package:medi_care/utils/constants/sizes.dart';

import 'widgets/login_form.dart';
import '../../../../common/widgets/social_media/social_login.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.defaultPadding),
          // padding: SpaceStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              LoginHeader(),
              SizedBox(height: AppSize.spaceSections),
              LoginForm(),
              SizedBox(height: AppSize.spaceItems),
              FormDivider(),
              SizedBox(height: AppSize.spaceItems),
              SocialLogin()
            ],
          ),
        ),
      ),
    );
  }
}

