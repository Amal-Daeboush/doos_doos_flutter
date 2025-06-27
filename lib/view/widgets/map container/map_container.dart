import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/auth/select%20ride/widgets/custom_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapContainer extends StatelessWidget {
  const MapContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyColor2,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Pick',
                style: Styles.style16Montserrat.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                'Sharjah City Center',
                style: Styles.style14Light.copyWith(fontFamily: 'Montserrat'),
              ),
              leading: Icon(Icons.location_on, color: AppColors.primary),
            ),
            CustomLine(),
            ListTile(
              title: Text(
                'Return',
                style: Styles.style16Montserrat.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                'Sharjah International Airport',
                style: Styles.style14Light.copyWith(fontFamily: 'Montserrat'),
              ),
              leading: Icon(Icons.location_on, color: AppColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
