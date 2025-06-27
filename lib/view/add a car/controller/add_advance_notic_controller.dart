import 'package:doss_doss/view/add%20a%20car/view/min_trip_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAdvanceNoticEController extends GetxController {
  List question = ['6 Hours', '12 Hours', '1 day', '2 day'];
  String? group;
  String? value;
  onChanged(value) {
    group = value!;

    update();
  }

  void continuee() {
     Get.to(
      () => MinTripScreen(),
      transition: Transition.downToUp,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOut,
    ); 
  }
}
