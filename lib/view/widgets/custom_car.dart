import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:flutter/material.dart';

class CustomCarTour extends StatelessWidget {
  const CustomCarTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset(AppImageAsset.car2,width: HelperFunctions.screenWidth()/1.25,fit: BoxFit.cover,)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(AppImageAsset.ellipse),
              Positioned(
                bottom: -10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(AppImageAsset.roat),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
