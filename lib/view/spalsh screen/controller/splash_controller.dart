import 'package:doss_doss/core/constant/const_data.dart';
import 'package:doss_doss/view/botttom%20nav%20bar/view/bottom_nav_bar_screen.dart';
import 'package:doss_doss/view/on%20boarding/view/on_boarding_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 4), () {
       var token = ConstData.token;
         
          var user = ConstData.user;
          print(token);

          print('----------------------$user------------------');
        

          if (token == '') {
             Get.off(OnBoardingScreen());
          } else {
            Get.off(BottomNavBarScreen());
          }
  
    });

    super.onInit();
  }
}
