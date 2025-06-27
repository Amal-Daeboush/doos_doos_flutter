import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constant/app_colors.dart';

class CustomFieldSearch extends StatelessWidget {
  final String? hint;
  const CustomFieldSearch({super.key, this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText:hint?? 'Search your dream car... ',
          prefixIcon: Icon(
            Iconsax.search_normal_1,
            color: AppColors.primary,
            size: 15, // حجم الأيقونة
          ),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontFamily: 'Montserrat',
            fontSize: 16.sp, // حجم النص
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 10,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: AppColors.primary.withOpacity(0.5)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:  BorderSide(color: AppColors.primary.withOpacity(0.5)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: AppColors.primary.withOpacity(0.5)),
          ),
        ),
      ),
    );
  }
}
