import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget FeatureRow(String name,String image) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Row(children: [
      Image.asset(image),
      SizedBox(width: 10.w,),
      Text(name, style: Styles.style14LightMontserrat)]),
  );
}
