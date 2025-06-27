import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/styles.dart';

class CustomFilterBottomSheet extends StatelessWidget {
  final List<String> filters;
  final String? select; 
  final Function(String) onFilterSelected; 
  const CustomFilterBottomSheet({
    Key? key, // Add key for better practice
    required this.filters,
    required this.select,
    required this.onFilterSelected, // Require the callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24,bottom: 100),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              filters.map((filter) {
                bool isSelected = filter == select;

                return GestureDetector(
            
                  onTap: () {
                    onFilterSelected(filter); 
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ), // Add some vertical spacing
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primary),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color:
                                    isSelected
                                        ? AppColors.primary
                                        : Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                            ),
                           
                          ),
                        ),
                        SizedBox(width: 16.w), 
                        Text(
                          filter,
                          style: Styles.style14LightMontserrat,
                        ), 
                      ],
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
