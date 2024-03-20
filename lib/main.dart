import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:medi_care/features/onboarding/screens/on_boarding.dart";
import "package:medi_care/utils/themes/custom_themes/theme.dart";

void main(){
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   // statusBarColor: Colors.transparent,
  //   statusBarBrightness: Brightness.light,
  //   statusBarIconBrightness: Brightness.dark,
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.lightTheme,
      home: const OnBoarding(),
    );
  }
}
