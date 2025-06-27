import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/view/spalsh%20screen/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: GetBuilder(
        init: SplashController(),
        builder: (controller) {
          return Center(
            child: Image.asset(AppImageAsset.logo, fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
