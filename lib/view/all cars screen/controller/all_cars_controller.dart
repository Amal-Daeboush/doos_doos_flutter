import 'package:get/get.dart';

class AllCarsController extends GetxController {
  int selectedIndex = 0;
  bool isSwitched = true;

  void selectButton(int index) {
    selectedIndex = index;
    update();
  }

  void swithed(bool value) {
    isSwitched = value;
    update();
  }
}
