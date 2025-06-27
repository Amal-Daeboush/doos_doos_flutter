import 'package:get/get.dart';


class OTPVerificationController extends GetxController {

  // static VerificationController instance = Get.find();
  late String phoneNumber;
  String? verificationCode;

  // RxInt counter = 60.obs;
  // Timer? timer;
  // waiting() {
  //   timer = Timer.periodic(const Duration(seconds: 1), (timer) {
  //     if (counter.value == 0) {
  //       counter.value = 60;
  //       timer.cancel();
  //       return;
  //     }
  //     counter--;
  //   });
  // }

  void checkVerificationCode() {
    if (verificationCode == '1234') {
     // Get.off(const LoginScreen());
    } else {
      Get.snackbar("تنبيه", "ادخل رقم صحيح");
    }
  }

  @override
  void onInit() {
    // waiting();
    phoneNumber = '0991615304';
    // TODO: implement onInit
    super.onInit();
  }
}
