import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarUnavailableController extends GetxController {
  bool isSwitched = true;

  DateTime? startDate;
  TimeOfDay? startTime;
  DateTime? endDate;
  TimeOfDay? endTime;

  void swithed(bool value) {
    isSwitched = value;
    update();
  }

  Future<void> pickStartDateTime(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (date != null) {
      final time = await showTimePicker(
        context: context,
        initialTime: startTime ?? TimeOfDay.now(),
      );

      if (time != null) {
        startDate = date;
        startTime = time;
        update();
      }
    }
  }

  Future<void> pickEndDateTime(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: endDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (date != null) {
      final time = await showTimePicker(
        context: context,
        initialTime: endTime ?? TimeOfDay.now(),
      );

      if (time != null) {
        endDate = date;
        endTime = time;
        update();
      }
    }
  }

  String formatDateTime(DateTime? date, TimeOfDay? time) {
    if (date == null || time == null) return "--";
    final dt = DateTime(date.year, date.month, date.day, time.hour, time.minute);
    return "${formatDate(date)} ${time.format(Get.context!)}";
  }

  String _weekDay(int day) {
    const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return days[day - 1];
  }

  String _month(int month) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return months[month - 1];
  }
  String formatDate(DateTime date) {
  return "${_weekDay(date.weekday)} ${_month(date.month)} ${date.day}, ${date.year}";
}

}
