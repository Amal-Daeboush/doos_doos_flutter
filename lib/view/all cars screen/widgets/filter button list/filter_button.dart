import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String name;
  final Widget? widget;
  final void Function()? onTap;
  final bool isSelect;
  const FilterButton({
    super.key,
    required this.name,
    required this.isSelect,

    this.widget,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelect ? AppColors.primary : AppColors.greyColor2,
          border: Border.all(
            color: isSelect ? AppColors.primary : AppColors.greyColor6,
            width: isSelect ? 1 : 1.5,
          ),
        ),
        child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 0),
              child: Center(
                child: widget ??
                Text(
                  name,
                  style: Styles.style14LightMontserrat.copyWith(
                    color: isSelect ? AppColors.white : AppColors.primary,
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
