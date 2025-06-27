import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constant/styles.dart';

class ChatInputSection extends StatelessWidget {
  final bool isChatSupport;
  final void Function()? onTapAtchefment;
  final TextEditingController? controller;
  const ChatInputSection({super.key, this.onTapAtchefment, this.controller, required this.isChatSupport});

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    return Container(
      width: HelperFunctions.screenWidth(),
      //  padding: const EdgeInsets.symmetric( vertical: 5.0),
      decoration: BoxDecoration(
        boxShadow: [AppColors.whiteShadowtop],
        color:    isChatSupport?Colors.transparent: AppColors.white,
        //   borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Text Field for New Comment
         isChatSupport?SizedBox():   InkWell(
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: onTapAtchefment,
              child: Image.asset(AppImageAsset.clip),
            ),
            //Icon(Icons.attachment),
            SizedBox(width: 10.w),
            Expanded(
              child: TextField(
                focusNode: focusNode,
                style: Styles.style14LightMontserrat,
                controller: controller,

                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Iconsax.document_copy,
                    color: AppColors.greyColor12,
                  ),
                  fillColor: AppColors.greyColor13,
                  filled: true,
                  contentPadding: EdgeInsets.only(left: 5),
                  hintText: "Write your message",
                  helperStyle: Styles.style12.copyWith(
                    color: AppColors.greyColor12,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.greyColor13),
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.greyColor13),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.greyColor13),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
             isChatSupport?SizedBox():    Icon(Iconsax.camera),
            const SizedBox(width: 8),
            isChatSupport?SizedBox():     Icon(Iconsax.microphone_2),

            // Send Button
            /*  InkWell(
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              onTap: () {
                // إغلاق لوحة المفاتيح عند الإرسال
                focusNode.unfocus();
                if (onTap != null) onTap!();
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Iconsax.send_2, color: AppColors.primary),
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
