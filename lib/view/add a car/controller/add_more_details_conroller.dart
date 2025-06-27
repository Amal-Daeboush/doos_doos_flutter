
import 'package:doss_doss/view/add%20a%20car/view/add_features_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddMoreDetailsController extends GetxController {
  String selectedDoors = '';
  String selectedSeats = '';

  List<String> doorsOptions = ['2', '3', '4', '5','6','7'];
  List<String> seatsOptions = ['2', '3', '4', '5','6','7'];

  void selectDoors(String value) {
    selectedDoors = value;
    update();
  }

  void selectSeats(String value) {
    selectedSeats = value;
    update();
  }
   void continuee() {
      Get.to(
        () => AddFeaturesScreen(),
        transition: Transition.downToUp,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      ); 
  }
}
