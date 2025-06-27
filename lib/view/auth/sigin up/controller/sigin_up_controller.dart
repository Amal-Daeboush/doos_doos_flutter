import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/model/api%20remote/api_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SiginUpController extends GetxController {
   bool obscureText = false;
  changeObscureText() {
    obscureText = !obscureText;
    update();
  }

  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  StatusRequest statusRequest = StatusRequest.none;
  bool isLoading = false;

  register() async {
    if (keyForm.currentState!.validate()) {
      isLoading = true;
      statusRequest = StatusRequest.loading;
      update();

      var response = await ApiRemote().signUpModel({
        'name': this.nameController.text,
        'email': this.emailController.text,
        'password': this.passwordController.text,
        "type": '0',
      });

      print("Response: $response");

      if (response == StatusRequest.success) {
        Get.snackbar(
          'نجاح',
          ' تم انشاء الحساب ...قم براجعة ايميلك من اجل تاكيد الحساب',
        );
        statusRequest = StatusRequest.success;
        isLoading = false;
        //   Get.off(const LoginScreen());
      //  Get.off(VerificationPhonScreen(email: emailController.text));
      } else if (response is String) {
        // ✅ عرض رسالة الخطأ بشكل مناسب
        Get.snackbar('Error', response);
        isLoading = false;
        statusRequest = StatusRequest.failure;
      } else {
        Get.snackbar('خطأ', 'حدث خطأ');
        isLoading = false;
        statusRequest = StatusRequest.failure;
      }
      nameController.clear();
      emailController.clear();
      passwordController.clear();
      update();
    } else {
      Get.snackbar('خطأ', 'من فضلك املىء الحقول');
      emailController.clear();
      nameController.clear();
      passwordController.clear();
    }
  }
}