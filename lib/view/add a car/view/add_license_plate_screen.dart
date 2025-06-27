import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart'
    show CustomButtons;
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/add_licens_plat_cntroller.dart';


class AddLicensePlateScreen extends StatelessWidget {
  const AddLicensePlateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: GetBuilder(
        init: AddLicensPlatCntroller(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('License plate', style: Styles.style26),
                        SizedBox(height: 10.h),
                        Text(
                          'Your license plate information won’t be publicly visible',
                          style: Styles.style14LightMontserrat,
                        ),
                        SizedBox(height: 20.h),
                        CustomTextFormField(
                          obscureText: false,
                          isPassWord: false,
                          borderRadius: BorderRadius.circular(10),
                          borderColor: AppColors.primary,
                          hintText: 'license plate number',
                        ),
                        SizedBox(height: 16.h),
                        CustomTextFormField(
                          obscureText: false,
                          isPassWord: false,
                          borderRadius: BorderRadius.circular(10),
                          borderColor: AppColors.primary,
                          hintText: 'state',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: CustomButtons(
                          onTap: controller.continuee,
                    title: 'Continue',
                    isBlack: true,
                    issmall: false,
                    border: AppColors.primary,
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
