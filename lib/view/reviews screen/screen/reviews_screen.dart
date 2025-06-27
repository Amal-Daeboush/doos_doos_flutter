import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/car%20details/widgets/retal%20container/review_card.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reviews',
              style: Styles.style26.copyWith(color: AppColors.black3),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.separated(
                itemBuilder:
                    (context, index) => ReviewCard(isfavourteIcom: true,isInHost: false,),
                itemCount: 4,
                separatorBuilder: (context, index) => SizedBox(height: 15.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
