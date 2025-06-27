import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class RentalDatesController extends GetxController {
  DateTime focusedDay = DateTime.now();
  DateTime firstDay = DateTime(2020, 1, 1);
  DateTime lastDay = DateTime(2025, 12, 31);

  DateTime? rangeStart;
  DateTime? rangeEnd;
  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  TimeOfDay? pickupTime;
  TimeOfDay? returnTime;

  void onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    rangeStart = start;
    rangeEnd = end;
    this.focusedDay = focusedDay;
    update();
  }

  Future<void> selectPickupTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      pickupTime = picked;
      update();
    }
  }

  Future<void> selectReturnTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      returnTime = picked;
      update();
    }
  }

  void clearSelection() {
    rangeStart = null;
    rangeEnd = null;
    pickupTime = null;
    returnTime = null;
    update();
  }
}
