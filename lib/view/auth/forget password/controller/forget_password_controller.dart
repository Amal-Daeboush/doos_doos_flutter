import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/core/constant/api_links.dart';
import 'package:doss_doss/model/api%20remote/api_model.dart';
import 'package:doss_doss/view/auth/verfication/view/otp_Verification_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../core/class/crud.dart';

class ForgetPasswordController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;
  bool isLoading = false;
  TextEditingController emailController = TextEditingController();

  bool obscureText = false;
  changeObscureText() {
    obscureText = !obscureText;
    update();
  }

  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'من فضلك املىء الحقل';
    }

    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return 'من فضلك ادخل شكل ايميل صحيح';
    }

    return null;
  }

  ForgetPass() async {
    if (keyForm.currentState!.validate()) {
      isLoading = true;
      statusRequest = StatusRequest.loading;
      update();

      var response = await ApiRemote().forgetpassModel({
        'email': emailController.text,
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
          // ✅ الانتقال إلى شاشة OTP
          Get.to(
            OTPVerificationScreen(
              email: emailController.text,
              isResetpass: true,
            ),
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

      emailController.clear();
      update();
    } else {
      Get.snackbar('خطأ', 'من فضلك املىء الحقل');
      emailController.clear();
    }
  }
}
