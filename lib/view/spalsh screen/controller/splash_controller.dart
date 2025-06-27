import 'package:doss_doss/view/on%20boarding/view/on_boarding_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.off(OnBoardingScreen());
    });

    super.onInit();
  }
}
