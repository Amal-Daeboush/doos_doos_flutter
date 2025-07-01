import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/model/api%20remote/api_model.dart';
import 'package:doss_doss/view/auth/verfication/view/otp_Verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
      
class SiginUpController extends GetxController {
   bool isAgreedToTerms = false; // حالة الموافقة على الشروط


  void toggleAgreement() {
    isAgreedToTerms = !isAgreedToTerms;
    update();
  }
   bool obscureText = false;
  changeObscureText() {
    obscureText = !obscureText;
    update();
  }

  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
   TextEditingController countryController = TextEditingController();
   TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  StatusRequest statusRequest = StatusRequest.none;
  bool isLoading = false;

 register() async {
  if (keyForm.currentState!.validate()) {
     if (!isAgreedToTerms) {
      Get.snackbar('تنبيه', 'يرجى الموافقة على الشروط والأحكام.');
      return;
    }
    isLoading = true;
    statusRequest = StatusRequest.loading;
    update();

    var response = await ApiRemote().signUpModel({
      'name': nameController.text,
      'email': emailController.text,
      'phone': phoneController.text,
      'country': countryController.text,
      'password': passwordController.text,
      "type": '0',
    });

    print("Response: $response");

    if (response is Map && response.containsKey('message')) {
      final msg = response['message'];
      Get.snackbar('معلومة', msg);

      isLoading = false;
      statusRequest = StatusRequest.success;

      // ✅ التحقق من أن الرسالة تدل على نجاح التسجيل
      if (msg.toString().toLowerCase().contains('success')) {
        Get.to(
          OTPVerificationScreen(email: emailController.text, isResetpass: false),
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
      Get.snackbar('خطأ', 'حدث خطأ أثناء العملية');
      statusRequest = StatusRequest.failure;
      isLoading = false;
    }

    // مسح الحقول
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    countryController.clear();
    passwordController.clear();
    update();
  } else {
    Get.snackbar('تنبيه', 'يرجى ملء الحقول المطلوبة');
  }
}



}