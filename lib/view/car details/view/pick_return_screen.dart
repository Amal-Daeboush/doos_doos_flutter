import 'package:doss_doss/core/class/helper_functions.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:doss_doss/view/car%20details/widgets/bottom%20container/bottom_container.dart';
import 'package:doss_doss/view/widgets/icons/custom_appbar_icon.dart';
import 'package:doss_doss/view/widgets/map%20container/map_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PickReturnScreen extends StatelessWidget {
  const PickReturnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(
        37.42796133580664,
        -122.085749655962,
      ),
      zoom: 14.4746,
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width, // <<< هنا تم التصحيح
                          height: HelperFunctions.screenHeight() / 2.5, // تحكم في ارتفاع الخريطة
                          child: GoogleMap(
                            mapType: MapType.normal,
                            initialCameraPosition: kGooglePlex,
                            onMapCreated: (GoogleMapController mapController) {},
                            myLocationButtonEnabled: false, // اخفاء زر تحديد الموقع (اختياري)
                            zoomControlsEnabled: false, // اخفاء ازرار الزوم (اختياري)
                          ),
                        ),
                        Positioned(
                          top: 50.h,
                          left: 16.w,
                          right: 16.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomAppBarIcon(() {}, Icons.close, false),
                              Text(
                                'Pick & Return',
                                style: Styles.style26.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 40), // حتى يكون هناك توازن في التصميم
                            ],
                          ),
                        ),
                      ],
                    ),
               // SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: MapContainer(),
                    ),
                //    const Spacer(),
                   
                  ],
                ),
              ),
            ),
             Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: BottomContainer(
                        onTap: () => Get.back(),
                        title: 'Save',
                        widget: Text(
                          'Clear',
                          style: Styles.style14LightMontserrat,
                        ),
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}
