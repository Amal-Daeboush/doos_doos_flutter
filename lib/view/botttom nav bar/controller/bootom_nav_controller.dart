import 'package:doss_doss/view/favourite%20screen/view/favourite_screen.dart';
import 'package:doss_doss/view/home/view/home_screen.dart';

import 'package:doss_doss/view/profile%20screen/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../inbox screen/view/inbox_screen.dart';

class BottomNavController extends GetxController {
  int page = 0;

  final List<Widget> pages = [
     HomeScreen(),
    const InboxScreen(),
    Center(child: const Text('rental')),
    const FavouriteScreen(),
     ProfileScreen(),
  ];
  void onTap(int index) {
    if (index != page) {
      page = index;
      update();
    }
  }
}
