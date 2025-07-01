import 'package:doss_doss/core/class/crud.dart';
import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/core/constant/api_links.dart';
import 'package:doss_doss/model/api%20remote/api_model.dart';
import 'package:doss_doss/view/auth/create%20new%20password/view/create_new_passsword.dart';
import 'package:doss_doss/view/auth/login/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPVerificationController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;
  bool isLoading = false;
  final bool isResetpass;
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  String? verificationCode;

  OTPVerificationController({required this.isResetpass});

  verfication() async {
    if (keyForm.currentState!.validate()) {
      isLoading = true;
      statusRequest = StatusRequest.loading;
      update();

      var response = await ApiRemote().verficationdModel({
        "otp": verificationCode,
      }, isResetpass ? true : false);

      print("Response: $response");

      // إذا كانت الاستجابة Map وفيها message
      if (response is Map && response.containsKey('message')) {
        String message = response['message'];
        bool success = response['status'] == true;

        Get.snackbar(success ? 'نجاح' : 'خطأ', message);

        if (success) {
          statusRequest = StatusRequest.success;
          isLoading = false;
          isResetpass
              ? Get.off(
                CreateNewPassword(otp: verificationCode!),
                transition: Transition.downToUp,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOut,
              )
              : Get.off(
                LoginScreen(),
                transition: Transition.downToUp,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
        } else {
          statusRequest = StatusRequest.failure;
          isLoading = false;
        }
      } else if (response is String) {
        // في حال رجع نص عادي
        Get.snackbar('معلومة', response);
        statusRequest = StatusRequest.failure;
        isLoading = false;
      } else {
        // في حال استجابة غير متوقعة
        Get.snackbar('خطأ', 'حدث خطأ غير متوقع');
        statusRequest = StatusRequest.failure;
        isLoading = false;
      }

      update();
    } else {
      Get.snackbar('خطأ', 'من فضلك املىء الحقل');
    }
  }
}
