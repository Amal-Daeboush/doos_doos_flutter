import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/styles.dart';

class BookCarButton extends StatelessWidget {
  final String name;
  final void Function()? onTap;
  const BookCarButton({super.key, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
      child: Container(
        // width:issmall?null: HelperFunctions.screenWidth(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          color: AppColors.primary,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            name,
            style: Styles.style18.copyWith(
              color: AppColors.white,
              fontFamily: 'Montserrat',
              fontSize: 12.sp,
            ),
          ),
        ),
      ),
    );
  }
}
