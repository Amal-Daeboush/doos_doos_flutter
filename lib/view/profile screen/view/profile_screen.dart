import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/bussines%20screen/view/buissines_screen.dart';
import 'package:doss_doss/view/checkout%20screen/view/payment_method_screen.dart';
import 'package:doss_doss/view/my%20cars/view/list_your_car_screen.dart';
import 'package:doss_doss/view/add%20a%20car/view/first_tell_about_car_screen.dart';
import 'package:doss_doss/view/profile%20screen/view/edit_profile_screen.dart';
import 'package:doss_doss/view/profile%20screen/widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
 // final bool isuse;
  const ProfileScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        shadowColor: Colors.white,
        title: Text('Profile', style: Styles.style30),
        bottomOpacity: 12,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ProfileCard(
              name: 'Profile',
              icon: Iconsax.frame_1,
              onPressed:
                  () => Get.to(
                    () => EditProfileScreen(verifydetailsInHost: false),
                    transition: Transition.downToUp,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  ),
            ),
            ProfileCard(
              name: 'List your car',
              image: AppImageAsset.icon_car,
              onPressed:   () => Get.to(
                    () => ListYourCarScreen(),
                    transition: Transition.downToUp,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  ),
            ),

            ProfileCard(
              name: 'Business',
              image: AppImageAsset.chart,
              onPressed:   () => Get.to(
                    () => BusinessScreen(),
                    transition: Transition.downToUp,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  ),
            ),

            ProfileCard(
              name: 'Upgrade your plan',
              image: AppImageAsset.switchAccount,
              onPressed: () {},
            ),
            ProfileCard(
              name: 'Payments',
              image: AppImageAsset.payments,
              onPressed:
                  () => Get.to(
                    () => PaymentMethodScreen(isFromProfile: true),
                    transition: Transition.downToUp,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  ),
            ),
            ProfileCard(name: 'History', icon: Iconsax.info_circle),
            ProfileCard(name: 'About', icon: Iconsax.info_circle),
            ProfileCard(name: 'Log out', icon: Icons.logout),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
