import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/qestion_about_owner_controller.dart';

class QuestionAboutOwnerScreen extends StatelessWidget {
  const QuestionAboutOwnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '', isBack: true),
      body: GetBuilder(
        init: QestionAboutOwnerController(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(child: SingleChildScrollView(child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Are you operating as a registered business?',style: Styles.style26,),
                    SizedBox(height: 10,),
                   Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: controller.question.map((type) {
                    return RadioListTile<String>(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      title: Text(
                        type[0].toUpperCase() + type.substring(1),
                        style: Styles.style14LightMontserrat,
                      ),
                      value: type,
                      groupValue: controller.group,
                      activeColor: AppColors.primary,
                      onChanged: controller.onChanged,
                    );
                  }).toList(),
                ),
                  ],
                ))),
                  Padding(
                  padding: const EdgeInsets.all(16),
                  child: CustomButtons(
                   onTap: controller.continuee,
                    title: 'Continue',
                    isBlack: true,
                    issmall: false,
                    border: AppColors.primary,
                  ),)
              ],
            ),
          );
        }
      ),
    );
  }
}