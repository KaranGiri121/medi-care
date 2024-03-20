import 'package:flutter/cupertino.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class SpaceStyle{

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSize.appBarHeight,
    left: AppSize.defaultPadding,
    right: AppSize.defaultPadding,
    bottom: AppSize.defaultPadding
  );
  static const EdgeInsetsGeometry paddingWithoutAppBar = EdgeInsets.only(
    left: AppSize.defaultPadding,
    right: AppSize.defaultPadding,
    bottom: AppSize.defaultPadding
  );

}