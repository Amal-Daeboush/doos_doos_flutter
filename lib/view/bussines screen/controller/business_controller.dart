import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessController extends GetxController {
  var selectedOption = 'Earning'.obs;
  late OverlayEntry dropdownOverlay;

  void toggleDropdown(BuildContext context, GlobalKey key) {
    if (_dropdownShown) {
      dropdownOverlay.remove();
      _dropdownShown = false;
    } else {
      final RenderBox renderBox =
          key.currentContext!.findRenderObject() as RenderBox;
      final Offset offset = renderBox.localToGlobal(Offset.zero);
      final Size size = renderBox.size;

      dropdownOverlay = OverlayEntry(
        builder:
            (_) => Positioned(
              top: offset.dy + size.height,
              //  left: offset.dx,
              left: offset.dx - 20.w,

              width: 110.w,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.greyColor2,
                    borderRadius: BorderRadius.zero,
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 6),
                    ],
                  ),
                  child: Column(
                    children:
                        ['Earning', 'Reviews'].map((option) {
                          return RadioListTile<String>(
                            title: Text(
                              option,
                              style: Styles.style12.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                            value: option,
                            groupValue: selectedOption.value,
                            onChanged: (value) {
                              selectedOption.value = value!;
                              dropdownOverlay.remove();
                              _dropdownShown = false;
                            },
                            activeColor: Colors.black,
                            contentPadding:
                                EdgeInsets.zero, // تقليل الحشو الداخلي
                            visualDensity: VisualDensity(
                              horizontal: -4,
                              vertical: -4,
                            ), // تقليل المسافات
                          );
                        }).toList(),
                  ),
                ),
              ),
            ),
      );

      Overlay.of(context).insert(dropdownOverlay);
      _dropdownShown = true;
    }
  }

  bool _dropdownShown = false;
}
