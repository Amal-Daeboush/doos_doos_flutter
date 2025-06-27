import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/styles.dart';
import 'filter_button.dart';

class FilterButtonList extends StatelessWidget {
  final List<String> filterNames;
  final int selectedIndex;
  final void Function(int index) onTap;
  const FilterButtonList({
    super.key,
    required this.filterNames,
    required this.selectedIndex,
   required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 5.w),
        scrollDirection: Axis.horizontal,
        itemCount: filterNames.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;

          return FilterButton(
            isSelect: isSelected,
            name: filterNames[index],
            onTap:() => onTap(index),
            widget:
                filterNames[index] == 'Filter'
                    ? Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Iconsax.setting_4,
                            color:
                                isSelected
                                    ? AppColors.white
                                    : AppColors.primary,
                          ),
                          SizedBox(width: 5),
                          Text(
                            filterNames[index],
                            style: Styles.style14LightMontserrat.copyWith(
                              color:
                                  isSelected
                                      ? AppColors.white
                                      : AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    )
                    : null,
          );
        },
      ),
    );
  }
}
