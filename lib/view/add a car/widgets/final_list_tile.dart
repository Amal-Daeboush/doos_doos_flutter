import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';


Widget FinalListtile(String title, String subtitle) {
  return ListTile(
    title: Text(
      title,
      style: Styles.style14LightMontserrat.copyWith(
        fontWeight: FontWeight.w600,
      ),
    ),
    subtitle: Text(
      subtitle,
      style: Styles.style12.copyWith(fontWeight: FontWeight.w400),
    ),
    leading: Image.asset(AppImageAsset.checked)
  );
}
