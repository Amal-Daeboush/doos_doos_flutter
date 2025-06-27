import 'package:doss_doss/view/add%20a%20car/view/final_add_info_host_screen.dart';
import 'package:doss_doss/view/add%20a%20car/view/max_trip_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TripDurationContoller extends GetxController {
  List min = ['1 day', '2 day', '3 day'];
  List max = ['5 day', '1 week', '2 week', '3 week', '1 month'];
  String? mingroup;
  String? maxgroup;
  String? minvalue;
  String? maxvalue;
  onChangedMin(value) {
    mingroup = value!;

    update();
  }

  onChangedMax(value) {
    maxgroup = value!;

    update();
  }

  void continueeMin() {
    Get.to(
      () => MaxTripScreen(),
      transition: Transition.downToUp,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  void continueeMax() {
    Get.to(
      () => FinalAddInfoHostScreen(),
      transition: Transition.downToUp,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOut,
    ); 
  }
}
