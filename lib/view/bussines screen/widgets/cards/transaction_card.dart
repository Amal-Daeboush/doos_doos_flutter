import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionCard extends StatelessWidget {
  final bool isconfirmed;
  const TransactionCard({super.key, required this.isconfirmed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColors.greyColor2,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bank Transfer',
                  style: Styles.style14LightMontserrat.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$ 100.00',
                  style: Styles.style14LightMontserrat.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('From Nour Ali', style: Styles.style14LightMontserrat),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:
                        isconfirmed ? AppColors.greenlight : AppColors.redlight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                     isconfirmed? 'Confirmed':'Rejected',
                      style: Styles.style10.copyWith(
                        fontWeight: FontWeight.w700,
                        color: isconfirmed ? AppColors.green2 : AppColors.red2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction ID',
                  style: Styles.style12.copyWith(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Text(
                  '17 Sep 2023',
                  style: Styles.style12.copyWith(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '564925374920',
                  style: Styles.style12.copyWith(color: Color.fromARGB(255, 41, 43, 68)),
                ),
                Text(
                  '10:34 AM',
                  style: Styles.style12.copyWith(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
