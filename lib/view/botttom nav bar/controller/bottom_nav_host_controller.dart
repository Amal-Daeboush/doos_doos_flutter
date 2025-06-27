/* import 'package:doss_doss/view/bussines%20screen/view/buissines_screen.dart';
import 'package:doss_doss/view/home/view/list_your_car_screen.dart';
import 'package:doss_doss/view/profile%20screen/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../inbox screen/view/inbox_screen.dart';

class BottomNavHostController extends GetxController {
  int page = 0;

  final List<Widget> pages = [
     ListYourCar(),
    const InboxScreen(),
    Center(child: const Text('host')),
    const BusinessScreen(),
     ProfileScreen(),
  ];
  void onTap(int index) {
    if (index != page) {
      page = index;
      update();
    }
  }
}
 */