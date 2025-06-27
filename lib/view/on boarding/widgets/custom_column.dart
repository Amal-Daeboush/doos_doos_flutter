import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColumn extends StatelessWidget {
  final String title;
  final bool isCheck;
  final String subTitle;
  const CustomColumn({
    super.key,
    required this.title,
    required this.subTitle,
    required this.isCheck,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(isCheck ? AppImageAsset.checked : AppImageAsset.favorite),
          SizedBox(width: 10.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Styles.style20.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  subTitle,
                  style: Styles.style16.copyWith(fontFamily: 'Montserrat'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
