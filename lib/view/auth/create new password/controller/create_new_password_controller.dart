import 'package:doss_doss/view/auth/login/view/login_screen.dart';
import 'package:get/get.dart';
import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/model/api%20remote/api_model.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;
  bool isLoading = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final String verficationCode;

  bool obscureText = false;
  changeObscureText() {
    obscureText = !obscureText;
    update();
  }

  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  CreateNewPasswordController({required this.verficationCode});

  createNewPass() async {
    if (keyForm.currentState!.validate()) {
      isLoading = true;
      statusRequest = StatusRequest.loading;
      update();

      var response = await ApiRemote().resetpassModel({
        'password': passwordController.text,
        'password_confirmation': confirmPasswordController.text,
        'otp': verficationCode,
      });
      print("Response: $response");

      if (response is Map && response.containsKey('status')) {
        // ✅ عرض الرسالة القادمة سواء نجاح أو فشل
        final msg = response['message'] ?? 'عملية تمت بدون رسالة';
        final status = response['status'] == true;

        Get.snackbar(status ? 'نجاح' : 'خطأ', msg);

        statusRequest = status ? StatusRequest.success : StatusRequest.failure;
        isLoading = false;
        if (status) {
          Get.off(
            LoginScreen(),
            transition: Transition.downToUp,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
          );
        }
      } else if (response is String) {
        Get.snackbar('خطأ', response);
        statusRequest = StatusRequest.failure;
        isLoading = false;
      } else {
        Get.snackbar('خطأ', 'حدث خطأ غير متوقع');
        statusRequest = StatusRequest.failure;
        isLoading = false;
      }

      passwordController.clear();
      confirmPasswordController.clear();
      update();
    } else {
      Get.snackbar('خطأ', 'من فضلك املىء الحقل');
      passwordController.clear();
      confirmPasswordController.clear();
    }
  }
}
