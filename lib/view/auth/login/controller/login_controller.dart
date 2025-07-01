import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/model/api%20remote/api_model.dart';
import 'package:doss_doss/view/auth/select%20ride/view/select_your_ride_screen.dart';
import 'package:doss_doss/view/auth/verfication/view/otp_Verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  bool obscureText = false;
  changeObscureText() {
    obscureText = !obscureText;
    update();
  }

  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  StatusRequest statusRequest = StatusRequest.none;
  bool isLoading = false;

  login() async {
    if (keyForm.currentState!.validate()) {
      isLoading = true;
      statusRequest = StatusRequest.loading;
      update();

      var response = await ApiRemote().loginModel({
        'email': emailController.text,
        'password': passwordController.text,
      });

      print("Response: $response");

      if (response is Map && response.containsKey('access_token')) {
        Get.snackbar('نجاح', 'تم تسجيل الدخول بنجاح');

        statusRequest = StatusRequest.success;
        isLoading = false;

        Get.off(
      SelectYourRideScreen(),
          transition: Transition.downToUp,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut,
        );
      } else if (response is String) {
        Get.snackbar('خطأ', response);
        statusRequest = StatusRequest.failure;
        isLoading = false;
      } else {
        Get.snackbar('خطأ', 'حدث خطأ غير متوقع');
        statusRequest = StatusRequest.failure;
        isLoading = false;
      }

      emailController.clear();
      passwordController.clear();
      update();
    } else {
      Get.snackbar('تنبيه', 'يرجى ملء الحقول المطلوبة');
    }
  }
}
