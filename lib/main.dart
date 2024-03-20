import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get_storage/get_storage.dart";
import "package:medi_care/binding/general_binding.dart";
import "package:medi_care/data/repositories/authentication/authentication_repository.dart";
import "package:medi_care/firebase_options.dart";
import "package:medi_care/utils/constants/app_color.dart";
import "package:medi_care/utils/themes/custom_themes/theme.dart";

void main() async {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   // statusBarColor: Colors.transparent,
  //   statusBarBrightness: Brightness.light,
  //   statusBarIconBrightness: Brightness.dark,
  // ));
  final WidgetsBinding widgetBinding =
      WidgetsFlutterBinding.ensureInitialized();


  await GetStorage.init();



  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepo()));
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
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: AppColor.primary,
        // body: VerifyEmail(email: 'karangiri121@gmail.com',),
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
