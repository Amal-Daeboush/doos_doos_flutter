import 'package:doss_doss/view/home/widgets/car%20card/custom_car.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_field_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Favorite', isBack: false),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: Column(
          children: [
            CustomFieldSearch(hint: 'Find your favorite'),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemCount: 5,
                itemBuilder: (context, index) => CustomCar(isInHost: false,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
