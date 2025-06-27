import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/add%20a%20car/view/second_tell_about_car_screen.dart'
    show SecondTellAboutCarScreen;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterVinController extends GetxController {
  TextEditingController vinController = TextEditingController();
  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  String? vinValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'please fill out this field';
    }

    if (value.length < 17) {
      return 'Your VIN should be 17 characters long';
    }

    return null;
  }

  sbmitVin() {
    if (keyForm.currentState!.validate()) {
      Get.to(
        () => SecondTellAboutCarScreen(),
        transition: Transition.downToUp,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
    // emailController.clear();
    Get.generalDialog(
      barrierLabel: "Dialog",
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              //   height: 200,
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'VIN Not Recognized',
                    style: Styles.style16Montserrat.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Your VIN should be 17 characters long. Please double-check and try again.',
                    style: Styles.style14LightMontserrat,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1), // يبدأ من الأسفل
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );

    vinController.clear();
  }
}
