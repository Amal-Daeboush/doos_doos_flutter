import 'package:doss_doss/view/profile%20screen/view/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QestionAboutOwnerController extends GetxController {
  List question = ['Yes, i’m a professional owner', 'No , i’m a private owner'];
  String? group;
  String? value;
  onChanged(value) {
    group = value!;

    update();
  }

  void continuee() {
    Get.to(
      () => EditProfileScreen(verifydetailsInHost: true),
      transition: Transition.downToUp,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }
}
