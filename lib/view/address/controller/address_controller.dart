/*  import 'dart:async';
import 'package:mersal/core/class/helper_functions.dart';

import 'package:mersal/core/sevices/sevices.dart';


import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/class/status_request.dart';
import '../../../core/constant/app_routes.dart';
import '../../../data/data_source/remote/address/add_city_data.dart';
import '../../../model/user_model.dart';

class AddressController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;
  MyServices myServices = Get.find();
  AddCityData addCityData = AddCityData(Get.find());
  late Position position;
  UserModel? user;
  double? latitude;
  double? longitude;
  CameraPosition? kGooglePlex;
  Set<Marker> markers = {};
  final Completer<GoogleMapController> completerController =
      Completer<GoogleMapController>();
  String? currentCity;
  addMarkers(LatLng latLng) {
    markers.clear();
    markers.add(Marker(markerId: const MarkerId("1"), position: latLng));
    latitude = latLng.latitude;
    longitude = latLng.longitude;
    // update();
  }

  getCurrentLocation() async {
    position = await Geolocator.getCurrentPosition();
    print("========== latitude ==========${position.latitude}");
    print("========== longitude ==========${position.longitude}");
    kGooglePlex = CameraPosition(
      target: LatLng(position.latitude, position.longitude),
      zoom: 14.4746,
    );
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      currentCity = placemarks[0].administrativeArea!;

      print("========== currentCity ==========$currentCity");
    } catch (e) {
      print('Error: $e');
      Get.snackbar("Alert", "The Map does not support your location");
      currentCity = "undefined";
    }
    await addMarkers(LatLng(position.latitude, position.longitude));
    update();
  }

  onPressedAddLocationFromMap() {
    if (latitude == null || longitude == null) {
      Get.defaultDialog(
          title: 'Warning', middleText: "Please wait until map loaded");
    } else {
      /* Get.toNamed(AppRoutes.addressadd,
          arguments: {'latitude': latitude, 'longitude': longitude}); */
    }
  }

  onRefresh() {
    onPressedUseCurrentLocation();
    update();
  }

  onPressedUseCurrentLocation() async {
    if (latitude == null || longitude == null || currentCity == null) {
      Get.defaultDialog(
          title: 'Warning', middleText: "Please wait until map loaded");
    } else {
      statusRequest = StatusRequest.loading;
      update();
      var response = await addCityData.putData(city: currentCity!);
      print("========== Controller ========== $response");
      statusRequest = HelperFunctions.handlingData(response);
      if (statusRequest == StatusRequest.success) {
        user = UserModel.fromJson(response['data']['user']);
        myServices.sharedPreferences.setString('city', user!.city!);
        myServices.sharedPreferences.setDouble('longitude', longitude!);
        myServices.sharedPreferences.setDouble('latitude', latitude!);

        print(
            "========== city ==========${myServices.sharedPreferences.getString('city')}");
        Get.offNamed(AppRoutes.homepage, arguments: {'city': currentCity});
      } else if (statusRequest != StatusRequest.offlineFailure) {
        Get.snackbar("Alert", "Something went wrong");
      }
      update();
    }
  }

  onTapSkip() {
    Get.offNamed(AppRoutes.homepage);
  }

  @override
  void onInit() {
    print(kGooglePlex);
    getCurrentLocation();
    super.onInit();
  }
}
  */