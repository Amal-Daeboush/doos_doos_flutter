import 'package:doss_doss/view/add%20a%20car/view/add_car_condition_screen.dart' show AddCarConditionScreen;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/styles.dart' show Styles;

class SecondTellAboutCarController extends GetxController {
  List transmion = ['manual', 'automatic'];
  TextEditingController transmissionController = TextEditingController();

  @override
  void onInit() {
    transmissionController.text = 'manual';
    super.onInit();
  }

  void selectTransmission(BuildContext context) {
    String? selectedTransmission = transmissionController.text;

    Get.dialog(
      AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children:
              transmion.map((type) {
                return RadioListTile<String>(
                  title: Text(
                    type[0].toUpperCase() + type.substring(1),

                    style: Styles.style12.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  value: type,
                  groupValue: selectedTransmission,
                  activeColor: AppColors.primary,
                  onChanged: (value) {
                    transmissionController.text = value!;
                    Get.back();
                    update();
                  },
                );
              }).toList(),
        ),
      ),
    );
  }
  void continuee(){
  Get.to(
        () => AddCarConditionScreen(),
        transition: Transition.downToUp,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
  }
}
