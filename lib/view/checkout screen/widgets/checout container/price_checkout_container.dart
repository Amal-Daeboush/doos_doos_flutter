import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/car%20details/widgets/hosted/custom_divider.dart';
import 'package:doss_doss/view/checkout%20screen/widgets/checout%20container/checkout_container.dart';
import 'package:doss_doss/view/checkout%20screen/widgets/field_code_apply.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceCheckoutContainer extends StatelessWidget {
  const PriceCheckoutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckoutContainer(
      widget: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GLA 250 SUV',
              style: Styles.style20.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 16.h),
            FieldCodeApply(),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status',
                  style: Styles.style14LightMontserrat.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Confirmed',
                  style: Styles.style12.copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: Styles.style14LightMontserrat.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '280\$',
                  style: Styles.style12.copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            CustomDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: Styles.style14LightMontserrat.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '280\$',
                  style: Styles.style12.copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
