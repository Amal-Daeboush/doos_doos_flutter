import 'package:doss_doss/view/auth/verfication/controller/OTP_Verification_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/constant/app_colors.dart';



class OtpVerificationTextField extends GetView<OTPVerificationController> {
  const OtpVerificationTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // Force LTR direction
      child: OtpTextField(
        margin: EdgeInsets.all(5),
        numberOfFields: 4,
       
     focusedBorderColor:AppColors.primary ,
  
        mainAxisAlignment: MainAxisAlignment.center,
        borderRadius: BorderRadius.circular(50),
        fieldWidth: 50.w,
        fieldHeight: 60.h,
      //  borderColor: AppColors.primaryColor,
       borderWidth: 1,
        showFieldAsBox: true,
        onSubmit: (String verificationCode) {
          controller.verificationCode = verificationCode;
        },
      ),
    );
  }
}
