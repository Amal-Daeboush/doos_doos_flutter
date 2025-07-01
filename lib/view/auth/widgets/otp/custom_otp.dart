import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../verfication/controller/OTP_Verification_Controller.dart';

class OtpVerificationTextField extends GetView<OTPVerificationController> {
  const OtpVerificationTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // ✅ هذا هو المطلوب
        child: OtpTextField(
          numberOfFields: 6,
          focusedBorderColor: AppColors.primary,
          mainAxisAlignment: MainAxisAlignment.center,
          borderRadius: BorderRadius.circular(50),
          fieldWidth: 45.w, // حاول توازن العرض
          fieldHeight: 60.h,
          borderWidth: 1,
          showFieldAsBox: true,
          onSubmit: (String verificationCode) {
            controller.verificationCode = verificationCode;
          },
        ),
      ),
    );
  }
}
