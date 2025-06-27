import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/chat/view/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap:
            () => Get.to(
              ChatScreen(),
              transition: Transition.downToUp,
              duration: const Duration(milliseconds: 650),
              curve: Curves.easeOut,
            ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text('Amir Samy', style: Styles.style16),
          subtitle: Text(
            'Active now',
            style: Styles.style12.copyWith(color: AppColors.greyColor12),
          ),
          trailing: Text(
            '09:27 AM',
            style: Styles.style12.copyWith(color: AppColors.greyColor12),
          ),
          leading: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.greyColor11,
                radius: 25.r,
              ),
              Positioned(
                bottom: 2,
                right: 3,
                child: Container(
                  width: 12.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
