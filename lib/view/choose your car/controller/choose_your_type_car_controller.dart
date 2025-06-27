import 'package:get/get.dart';

class ChooseYourTypeCarController extends GetxController {
  String selectedType = 'Toyota';
  bool isopen = false;
  List<String> types = ['Toyota', 'BMW', 'Hyundai', 'Kia', 'Mercedes', 'Honda'];
  openDrop() {
    isopen = !isopen;
    update();
  }

  SelectType(String type) {
    selectedType = type;
    isopen = false;
    update();
  }
}
