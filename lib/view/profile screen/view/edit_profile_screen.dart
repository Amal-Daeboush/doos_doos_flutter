import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/profile%20screen/controller/edit_profile_controller.dart';
import 'package:doss_doss/view/profile%20screen/widgets/add_photo.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:doss_doss/view/widgets/loading/car_loader.dart';
import 'package:doss_doss/view/widgets/text%20field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  final bool verifydetailsInHost;
  const EditProfileScreen({super.key, required this.verifydetailsInHost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: true),
      backgroundColor: AppColors.white,
      body: GetBuilder(
        init: EditProfileController(verifydetailsInHost: verifydetailsInHost),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        verifydetailsInHost
                            ? 'Verify your personal details'
                            : 'personal details',
                        style: Styles.style26.copyWith(color: AppColors.black3),
                      ),
                      SizedBox(height: 7.h),
                      Text(
                        verifydetailsInHost
                            ? 'Enter details exactly as it’s recorded with government agencies'
                            : '',
                        style: Styles.style14LightMontserrat,
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //    color: Colors.transparent,
                          border: Border.all(color: AppColors.greyColor),
                          //   boxShadow: [AppColors.whiteShadowRight],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Add profile pic ',
                                      style: Styles.style16.copyWith(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' (optional)',
                                      style: Styles.style12.copyWith(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15.h),
                              AddPhotoWidget(
                                onTap: controller.pickImage,
                                selectedImage: controller.selectedImage!,
                                imageUrl: controller.profileModel?.image??null,
                              ),

                              SizedBox(height: 15.h),
                              CustomTextFormField(
                                controller: controller.firstNameController,
                                borderRadius: BorderRadius.circular(10),
                                hintText: 'First name',
                                obscureText: false,
                                isPassWord: false,
                              ),
                              SizedBox(height: 15.h),
                              CustomTextFormField(
                                borderRadius: BorderRadius.circular(10),
                                hintText: 'Last name',
                                controller: controller.lastNameController,
                                obscureText: false,
                                isPassWord: false,
                              ),
                              SizedBox(height: 15.h),
                              CustomTextFormField(
                                borderRadius: BorderRadius.circular(10),
                                hintText: 'Date of birth',
                                obscureText: false,
                                isPassWord: false,
                              ),
                              SizedBox(height: 15.h),
                              CustomTextFormField(
                                borderRadius: BorderRadius.circular(10),
                                hintText: 'Address',
                                controller: controller.address_1Controller,
                                obscureText: false,
                                isPassWord: false,
                              ),
                              SizedBox(height: 15.h),
                              CustomTextFormField(
                                borderRadius: BorderRadius.circular(10),
                                hintText: 'Address line 2 (optional)',
                                obscureText: false,
                                controller: controller.address_2Controller,
                                isPassWord: false,
                              ),
                              SizedBox(height: 15.h),
                              CustomTextFormField(
                                borderRadius: BorderRadius.circular(10),
                                controller: controller.zipCodeController,
                                hintText: 'Zip code',
                                obscureText: false,
                                isPassWord: false,
                              ),

                              SizedBox(height: 15.h),
                              CustomTextFormField(
                                borderRadius: BorderRadius.circular(10),
                                hintText: 'City',
                                controller: controller.cityController,
                                obscureText: false,
                                isPassWord: false,
                              ),
                              SizedBox(height: 15.h),
                              CustomTextFormField(
                                hintText: 'Country',
                                borderRadius: BorderRadius.circular(10),
                                obscureText: false,
                                isPassWord: false,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            CustomButtons(
                              onTap: controller.saveForLater,
                              title: 'Save for later',
                              isBlack: false,
                              issmall: false,
                              border: AppColors.greyColor2,
                              color: AppColors.greyColor2,
                            ),
                            SizedBox(height: 15.h),
                            CustomButtons(
                           onTap: () async {
  await controller.storeProfile();
},

                              title: 'Continue',
                              isBlack: true,
                              issmall: false,
                              border: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (controller.statusRequest == StatusRequest.loading)
                  carLoader(),
              ],
            ),
          );
        },
      ),
    );
  }
}
