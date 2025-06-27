import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';

Widget CustomRowText(String title,void Function()? onPressed){
return  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(title, style: Styles.style20),
                          IconButton(
                            onPressed: onPressed,
                            icon: Icon(
                              Icons.arrow_forward,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      );
}