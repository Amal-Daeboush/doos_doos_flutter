import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget RateRow(){
return   Padding(
 padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
  child: Row(
                children: [
                  Icon(Icons.star, size: 15, color: AppColors.yellow),
                  SizedBox(width: 5),
                  Text('4.9', style: Styles.style14LightMontserrat),
                  SizedBox(width: 5),
                  Text(
                    '(40 Trip)',
                    style: Styles.style12.copyWith(
                      color: AppColors.greyColor7,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
);
}