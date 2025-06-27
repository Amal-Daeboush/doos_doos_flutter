import 'package:doss_doss/view/add%20a%20car/view/register_company_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController  extends GetxController{
  final bool verifydetailsInHost;

  EditProfileController({required this.verifydetailsInHost});
   void continuee() {
    if(verifydetailsInHost){
       Get.to(
      () => RegisterCompanyScreen(),
      transition: Transition.downToUp,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
    }
   
  }
}