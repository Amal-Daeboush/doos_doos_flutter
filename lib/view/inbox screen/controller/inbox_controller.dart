import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InboxController extends GetxController
    with GetSingleTickerProviderStateMixin, Diagnosticable {
  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InboxController';
  }

  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose(); // Dispose the TabController
    super.onClose();
  }
}
