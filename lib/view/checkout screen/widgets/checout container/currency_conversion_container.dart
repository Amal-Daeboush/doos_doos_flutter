import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/checkout%20screen/widgets/checout%20container/checkout_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrencyConversionContainer extends StatelessWidget {
  const CurrencyConversionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _amountController = TextEditingController(
      text: '1000.00',
    );
    double convertedAmount = 736.70;

    String fromCurrency = 'EUR';
    String toCurrency = 'USD';

   
    final Map<String, String> currencyFlags = {
      'EUR': '🇪🇺',
      'USD': '🇺🇸',
      'SAR': '🇸🇦',
    };

    void convertCurrency() {
      //  double amount = double.tryParse(_amountController.text) ?? 0;
      // هنا تحويل ثابت كمثال
      //   double rate = 0.7367;
      /*   setState(() {
      convertedAmount = amount * rate;
    }); */
    }

    return CheckoutContainer(
      widget: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Currency Conversion',
              style: Styles.style20.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20.h),

            // Amount input
            Text(
              'Amount',
              style: Styles.style12.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                // العملة مع العلم
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    children: [
                      Text(
                        currencyFlags[fromCurrency] ?? '',
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(width: 15.w),
                      DropdownButton<String>(
                        value: fromCurrency,
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconEnabledColor: AppColors.greyColor3,
                        underline: SizedBox(),
                        items:
                            currencyFlags.keys.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: Styles.style14LightMontserrat.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            }).toList(),
                        onChanged: (newValue) {
                          fromCurrency = newValue!;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30.w),

                // المبلغ
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: AppColors.greyColor2,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _amountController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Amount',
                      ),
                      onChanged: (value) {
                        convertCurrency();
                      },
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            // زر التحويل
            Center(
              child: Row(
                children: [
                  Expanded(
                    child: Divider(height: 2, color: AppColors.greyColor5),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Icon(Icons.swap_vert, color: Colors.white),
                  ),
                  Expanded(
                    child: Divider(height: 2, color: AppColors.greyColor5),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.h),
            Text(
              'Converted Amount',
              style: Styles.style12.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10.h),
            // Converted Amount
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    children: [
                      Text(
                        currencyFlags[toCurrency] ?? '',
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(width: 15.w),
                      DropdownButton<String>(
                        value: toCurrency,
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconEnabledColor: AppColors.greyColor3,
                        underline: SizedBox(),
                        items:
                            currencyFlags.keys.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: Styles.style14LightMontserrat.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            }).toList(),
                        onChanged: (newValue) {
                          toCurrency = newValue!;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 50.w),
                Text(
                  convertedAmount.toStringAsFixed(2),
                  style: Styles.style16Montserrat.copyWith(
                    fontWeight: FontWeight.w500,
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
