 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glamgig_user/app/controller/product_cart_controller.dart';
import 'package:glamgig_user/app/controller/service_cart_controller.dart';
import 'package:glamgig_user/app/helper/init.dart';
import 'package:get/get.dart';
import 'package:glamgig_user/app/helper/router.dart';
import 'package:glamgig_user/app/util/constant.dart';
import 'package:glamgig_user/app/util/theme.dart';
import 'package:glamgig_user/app/util/translator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: ThemeProvider.appColor, // status bar color
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      name: 'ultimate-salon-flutter');
  await MainBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ServiceCartController>().getCart();
    Get.find<ProductCartController>().getCart();
    return GetMaterialApp(
      title: AppConstants.appName,
      color: ThemeProvider.appColor,
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      initialRoute: AppRouter.splash,
      getPages: AppRouter.routes,
      defaultTransition: Transition.native,
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
    );
  }
}
