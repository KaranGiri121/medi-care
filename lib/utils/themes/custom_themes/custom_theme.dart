import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_care/utils/constants/app_color.dart';
import 'package:medi_care/utils/constants/sizes.dart';

class CustomTheme {
  CustomTheme._();

  static TextTheme textTheme = TextTheme(
    headlineLarge: GoogleFonts.beVietnamPro().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: AppColor.textDark),
    headlineMedium: GoogleFonts.beVietnamPro().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: AppColor.textDark),
    headlineSmall: GoogleFonts.beVietnamPro().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: AppColor.textDark),
    titleLarge: GoogleFonts.beVietnamPro().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColor.textDark),
    titleMedium: GoogleFonts.lato().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColor.textDark),
    titleSmall: GoogleFonts.lato().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColor.textDark),
    bodyLarge: GoogleFonts.beVietnamPro().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColor.textDark),
    bodyMedium: GoogleFonts.lato().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: AppColor.textDark),
    bodySmall: GoogleFonts.lato().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: AppColor.textDark.withOpacity(0.5)),
    labelLarge: GoogleFonts.lato().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: AppColor.textDark),
    labelMedium: GoogleFonts.lato().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: AppColor.textDark.withOpacity(0.5)),
  );
  static AppBarTheme appBarTheme = const AppBarTheme(
      // systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.black,
        size: AppSize.iconMedium,
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.black,
        size: AppSize.iconMedium,
      ),
      titleTextStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black));

  static ElevatedButtonThemeData elevatedTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColor.primary,
        backgroundColor: AppColor.accentColor,
        disabledBackgroundColor: const Color(0xff83848b),
        disabledForegroundColor: AppColor.primary.withOpacity(0.8),
        side: const BorderSide(color: AppColor.primary),
        padding: const EdgeInsets.symmetric(vertical: AppSize.buttonHeight),
        textStyle: GoogleFonts.beVietnamPro(
            fontSize: 16,
            color: AppColor.textDark,
            fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.buttonRadius))),
  );

  static OutlinedButtonThemeData outlineTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        foregroundColor: AppColor.textDark,
        side: BorderSide(color: AppColor.borderColor),
        textStyle: GoogleFonts.beVietnamPro(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: AppColor.textDark),
        padding: const EdgeInsets.symmetric(
            vertical: AppSize.buttonHeight, horizontal: 20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.buttonRadius))),
  );

  static InputDecorationTheme inputTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColor.iconDark,
    suffixIconColor: AppColor.iconDark,
    labelStyle: GoogleFonts.lato()
        .copyWith(fontSize: AppSize.fontMedium, color: AppColor.darkColor),
    hintStyle: GoogleFonts.lato()
        .copyWith(fontSize: AppSize.fontMedium, color: AppColor.darkColor),
    errorStyle: GoogleFonts.lato()
        .copyWith(fontSize: AppSize.fontMedium, color: AppColor.darkColor),
    floatingLabelStyle: GoogleFonts.lato()
        .copyWith(fontSize: AppSize.fontMedium, color: AppColor.darkColor),



    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: BorderSide(width: 2, color: AppColor.borderColor),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: BorderSide(width: 2, color: AppColor.darkColor),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.deepOrangeAccent),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: Colors.deepOrangeAccent),
    ),
  );
}
