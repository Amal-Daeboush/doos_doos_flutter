import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constant/app_colors.dart';

// ignore: must_be_immutable
class FieldCodeApply extends StatelessWidget {
  void Function(String)? onChanged;
  TextEditingController? controller = TextEditingController();
  FieldCodeApply({
    super.key,

    this.controller,
    this.onChanged,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: isorderScreen?250.w:200.w,
      height: 50.h,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 2,vertical: 4),
        decoration: BoxDecoration(
          //  color:isorderScreen? AppColors.whiteColor3:AppColors.whiteColor,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: AppColors.primary),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                onChanged: onChanged,
                controller: controller,
                decoration: InputDecoration(
                  //    filled: true,
                  // fillColor: isorderScreen? AppColors.whiteColor3:AppColors.whiteColor,
                  hintText: 'discount Code',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color:
                    
                            Colors.grey,
                    fontSize: 14.sp, // حجم النص
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.h,
                    horizontal: 10.w,
                  ),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppColors.primary,
                //  color: AppColors.primaryColorBold,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Apply',
                  style: Styles.style12.copyWith(color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
