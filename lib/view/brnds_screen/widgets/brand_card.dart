import 'package:doss_doss/model/car_brand_model.dart';
import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/styles.dart';

class CustomCardBrand extends StatelessWidget {
  final void Function() onTap;
  final CarBrandModel brandModel;
  const CustomCardBrand({
    super.key,
    required this.brandModel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // خذ 60% من ارتفاع البطاقة للصورة
        final imageHeight = constraints.maxHeight * 0.4;
        return InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.greyColor2,
              border: Border.all(color: AppColors.greyColor5, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 1) الصورة مربعة تأخذ imageHeight
                SizedBox(
                  height: imageHeight,
                 // width: double.infinity,
                  child: Image.asset(brandModel.image, fit: BoxFit.cover),
                ),

                const SizedBox(height: 8),

                // 2) عنوان المنتج: يسمح له بالتفاف أكثر من سطر
                Flexible(
                  child: Text(
                    brandModel.name,
                    style: Styles.style14LightMontserrat.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1, // زوّد العدد حسب الحاجة
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                const SizedBox(height: 4),
              ],
            ),
          ),
        );
      },
    );
  }
}
