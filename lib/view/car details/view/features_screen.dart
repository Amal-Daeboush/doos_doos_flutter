import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/view/car%20details/widgets/feature%20row/feature_row.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FeaturesScreen extends StatelessWidget {
  const FeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Features', isBack: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FeatureRow('Aux input', AppImageAsset.auxx),
              FeatureRow('Backup camera', AppImageAsset.backup),
              FeatureRow('Find spot warning', AppImageAsset.blind),
              FeatureRow('Bluetooth', AppImageAsset.backup),
              FeatureRow('GPS', AppImageAsset.gps),
              FeatureRow('Heated seats', AppImageAsset.seat),
              FeatureRow('Keyless entry', AppImageAsset.protection),
              FeatureRow('USB charger', AppImageAsset.usb),
              FeatureRow(
                'Must be at least 21 years old to book',
                AppImageAsset.fe,
              ),
              FeatureRow('Full self-Driving (upon request)', AppImageAsset.charger),
              FeatureRow('Parking Assist', AppImageAsset.park),
              FeatureRow('Navigation', AppImageAsset.nav),
            ],
          ),
        ),
      ),
    );
  }
}
