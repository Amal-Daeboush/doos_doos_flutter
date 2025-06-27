import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/bussines%20screen/view/transaction_history_screen.dart';
import 'package:doss_doss/view/widgets/buttons/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EaringSection extends StatelessWidget {
  const EaringSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          Text('All Vehicles', style: Styles.style24),
          SizedBox(height: 10.h),
          Text('0\$ earning in 2025', style: Styles.style14LightMontserrat),
          SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 2,
                clipData: FlClipData.all(),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      reservedSize: 30,
                      getTitlesWidget: (value, meta) {
                        const months = ['    JAN', 'JUL', 'DEC       '];
                        TextAlign align;

                        if (value == 0) {
                          align = TextAlign.end;
                        } else if (value == 2) {
                          align = TextAlign.start;
                        } else {
                          align = TextAlign.center;
                        }

                        if (value.toInt() >= 0 &&
                            value.toInt() < months.length) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8, left: 4), //
                            child: Text(
                              months[value.toInt()],
                              textAlign: align,
                              style: Styles.style12,
                            ),
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ),

                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1, // يعرض لكل خط أفقي عنوان
                      getTitlesWidget: (value, _) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: const Text(
                            '0\$',
                            style: TextStyle(color: Colors.grey),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine:
                      (value) =>
                          FlLine(color: Colors.grey.shade300, strokeWidth: 1),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: const Border(
                    bottom: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    isCurved: true,
                    spots: [
                      FlSpot(0, 3),
                      FlSpot(1, 1),
                      FlSpot(2, 4),
                      FlSpot(3, 2),
                      FlSpot(4, 5),
                      FlSpot(5, 1.5),
                    ],
                    color: Colors.transparent,
                    barWidth: 0,
                    dotData: FlDotData(show: false),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Divider(color: Colors.black.withOpacity(0.3), thickness: 0.7),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Transaction History', style: Styles.style24),
              CustomButtons(
                onTap:
                    () => Get.to(
                      () => TransactionHistoryScreen(),
                      transition: Transition.downToUp,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                    ),
                title: 'view',
                isBlack: true,
                issmall: true,
                border: AppColors.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
