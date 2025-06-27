import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';

Widget buildNavItem({
  required IconData icon,
  required String title,
  String? image,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        image == null
            ? Icon(icon, color: AppColors.white, size: isSelected ? 28 : 20)
            : Image.asset(image, height: isSelected ? 28 : 20),
        const SizedBox(height: 4),
        Text(
          title,
          style: Styles.style12.copyWith(
            color: AppColors.white,
            fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
          ),
        ),
        const SizedBox(height: 4),
      ],
    ),
  );
}
