import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/view/widgets/space%20item.dart';
import 'package:flutter/material.dart';

Widget BascisRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      specItem(AppImageAsset.door, '4 doors', false),
      specItem(AppImageAsset.gas, 'Gas', false),
      specItem(AppImageAsset.chair, '7 Seats', false),
      specItem(AppImageAsset.bxs, 'Automatic', false),
    ],
  );
}
