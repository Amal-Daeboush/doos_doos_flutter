import 'package:doss_doss/view/add%20a%20car/view/add_photo_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddLicensPlatCntroller extends GetxController {
  void continuee() {
    Get.to(
      () => AddPhotoScreen(),
      transition: Transition.downToUp,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }
}
