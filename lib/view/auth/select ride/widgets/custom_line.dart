
import 'package:iconsax/iconsax.dart';
import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

Widget CustomLine() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        const Expanded(child: Divider(color: AppColors.primary, thickness: 1)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Icon(Iconsax.arrow_swap,color: AppColors.primary,)

        ),
        const Expanded(child: Divider(color: AppColors.primary, thickness: 1)),
      ],
    ),
  );
}
