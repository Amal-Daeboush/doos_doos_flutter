import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/add%20a%20car/controller/enter_vin_controller.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class EnterVinScreen extends StatelessWidget {
  const EnterVinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: false),
      body: GetBuilder(
        init: EnterVinController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
                      key: controller.keyForm,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('VIn', style: Styles.style26),
                          SizedBox(height: 25.h),
                          CustomTextFormField(
                            borderColor: AppColors.primary,
                            validator: (p0) => controller.vinValidator(p0),
                            controller: controller.vinController,
                            obscureText: false,
                            isPassWord: false,
                            hintText: 'What’s your car vin?',
                            hintTextInField: 'Enter vin',
                                          borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16.h),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: CustomButtons(
                    onTap: controller.sbmitVin,
                    title: 'Submit',
                    isBlack: true,
                    issmall: false,
                    border: AppColors.primary,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
