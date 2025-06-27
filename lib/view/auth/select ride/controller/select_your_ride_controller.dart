import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SelectYourRideController extends GetxController {
  Rx<RangeValues> selectedRange = const RangeValues(0, 1000).obs;

  void updateRange(RangeValues values) {
    selectedRange.value = values;
  }

  int get minPrice => selectedRange.value.start.round();
  int get maxPrice => selectedRange.value.end.round();
}
