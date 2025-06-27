
import 'package:doss_doss/view/add%20a%20car/view/add_license_plate_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddDescriptionController  extends GetxController{
   void continuee() {
       Get.to(
        () => AddLicensePlateScreen(),
        transition: Transition.downToUp,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );  
  }
}