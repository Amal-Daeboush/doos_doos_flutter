import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomCarShimmer extends StatelessWidget {
  const CustomCarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.greyColor2,
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0.w),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Container(
                  height: 20.h,
                  width: 120.w,
                   decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 18.h,
                  width: 80.w,
                    decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Row(
                        children: [
                          Container(
                            width: 50.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                          ),
                          if (index < 2)
                            SizedBox(width: 10.w), // spacing
                        ],
                      );
                    }),
                  ),
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(2, (_) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Container(
                        height: 30.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
