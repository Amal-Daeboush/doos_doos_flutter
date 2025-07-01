import 'package:doss_doss/bindings/initial_bindings.dart';
import 'package:doss_doss/core/sevices/sevices.dart';
import 'package:doss_doss/theme/app_themes.dart';
import 'package:doss_doss/view/botttom%20nav%20bar/view/bottom_nav_bar_screen.dart';
import 'package:doss_doss/view/spalsh%20screen/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  await ScreenUtil.ensureScreenSize();
  await MyServices();
  await MyServices().initialize();
  // await MyServices().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          // locale: const Locale('ar'),
          initialBinding: InitialBindings(),
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          //  getPages: routes,
          home: SplashScreen(),
        );
      },
    );
  }
}
