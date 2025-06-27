import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/add%20a%20car/view/add_more_detials_screen.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddCarConditionController extends GetxController {
  TextEditingController conditionController = TextEditingController();
  List condition = ['Excellent', 'Good', 'Fair', 'Not working'];
  TextEditingController seatbeltsController = TextEditingController();
  List seatbelts = ['Yes', 'No'];

  

void selectCondition(BuildContext context) {
  String? conditionTransmission = conditionController.text;

  Get.generalDialog(
    barrierLabel: "Condition",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, anim1, anim2) {
      return Center(
        child: Container(
          width: 250, // ✅ قلل العرض كما تريد (مثلا 250)
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(0),
          ),
          child: Material(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: condition.map((type) {
                return RadioListTile<String>(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  title: Text(
                    type[0].toUpperCase() + type.substring(1),
                    style: Styles.style12.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  value: type,
                  groupValue: conditionTransmission,
                  activeColor: AppColors.primary,
                  onChanged: (value) {
                    conditionController.text = value!;
                    Get.back();
                    update();
                  },
                );
              }).toList(),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: anim1,
          curve: Curves.easeOut,
        )),
        child: child,
      );
    },
  );
}
void selectSeatbelts(BuildContext context) {
     String? seatbeltsString = seatbeltsController.text;

  Get.generalDialog(
    barrierLabel: "seatbelts",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, anim1, anim2) {
      return Center(
        child: Container(
          width: 250, // ✅ قلل العرض كما تريد (مثلا 250)
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(0),
          ),
          child: Material(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: seatbelts.map((type) {
                return RadioListTile<String>(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  title: Text(
                    type[0].toUpperCase() + type.substring(1),
                    style: Styles.style12.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  value: type,
                  groupValue: seatbeltsString,
                  activeColor: AppColors.primary,
                  onChanged: (value) {
                    seatbeltsController.text = value!;
                    Get.back();
                    update();
                  },
                );
              }).toList(),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: anim1,
          curve: Curves.easeOut,
        )),
        child: child,
      );
    },
  );
}

  void continuee() {
      Get.to(
        () => AddMoreDetailsScreen(),
        transition: Transition.downToUp,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      ); 
  }
}
