import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/car%20details/view/pick_return_screen.dart';

import 'package:doss_doss/view/car%20details/widgets/retal%20container/retal_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class PickReturn extends StatelessWidget {
    final void Function()? onTap;
  const PickReturn({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
  
    return RetalContainer(
      title: 'Pick&Return',
      button: 'Edit',
       onTap:
          () => Get.to(
            () => PickReturnScreen(),
            transition: Transition.downToUp,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          ),
      widget: Row(
     
        children: [
          Icon(Icons.location_on_outlined,),
          SizedBox(width:5.w),
          Text(
            'UAE,Sharjah',
            style: Styles.style14LightMontserrat.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
