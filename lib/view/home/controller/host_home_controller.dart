import 'package:get/get.dart';

class HostHomeController extends GetxController {
  String selectfilter = 'All Cars';
  List<String> filter = [
    'All Cars',
    'Active (0)',
    'Incomplete(0)',
    'Pending (0)',
    'Blocked (0)',
  ];
  selectFilter(String select) {
    selectfilter = select;

    update();
  }
}
