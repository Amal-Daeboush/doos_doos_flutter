import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/view/add%20a%20car/view/add_description_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddMoreFeaturesController extends GetxController {
  List Features = [
    {"name": 'Air conditioning', "icon": "${AppImageAsset.cond}"},
    {"name": 'Cruise control', "icon": "${AppImageAsset.control}"},
    {"name": 'GPS', "icon": "${AppImageAsset.gps}"},
    {"name": 'Baby seat', "icon": "${AppImageAsset.child}"},
    {"name": 'Roof box', "icon": "${AppImageAsset.box}"},
    {"name": 'Bike rack', "icon": "${AppImageAsset.bike}"},
    {"name": 'Winter tires', "icon": "${AppImageAsset.trie}"},
    {"name": 'Blutoth audio', "icon": "${AppImageAsset.blutooth}"},
    {"name": 'Dashcam', "icon": "${AppImageAsset.cam}"},
    {"name": 'Aux input', "icon": "${AppImageAsset.auxx}"},
    {"name": 'Backup camera', "icon": "${AppImageAsset.backup}"},
    {"name": 'spot warning', "icon": "${AppImageAsset.blind}"},
    {"name": 'Heated seats', "icon": "${AppImageAsset.seat}"},
    {"name": 'Keyless entry', "icon": "${AppImageAsset.fe}"},
    {"name": 'USB charger', "icon": "${AppImageAsset.usb}"},
    {"name": 'Full self-Driving', "icon": "${AppImageAsset.charger}"},
    {"name": 'Navigation', "icon": "${AppImageAsset.nav}"},
    {"name": 'Apple carplay', "icon": "${AppImageAsset.apple}"},
    {"name": 'Android auto', "icon": "${AppImageAsset.android}"},
    {"name": 'Wheelchair accessible', "icon": "${AppImageAsset.acces}"},
  ];
  List myFeatures = [];

  void selectFeatures(Map<dynamic, dynamic> select) {
    myFeatures.add(select);
    update();
  }
     void continuee() {
       Get.to(
        () => AddDescriptionScreen(),
        transition: Transition.downToUp,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );  
  }
}
