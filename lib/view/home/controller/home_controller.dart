import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/core/constant/api_links.dart';
import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/model/car_brand_model.dart';
import 'package:doss_doss/model/car_model.dart';
import 'package:get/get.dart';

import '../../../core/class/crud.dart';

class HomeController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;
  String message = '';
  List<CarModel> cars = [];
  List<CarBrandModel> carBrands = [
    CarBrandModel(name: 'Nissan', image: AppImageAsset.nissan),
    CarBrandModel(name: 'Tesla', image: AppImageAsset.tess),
    CarBrandModel(name: 'BMW', image: AppImageAsset.BME),
    CarBrandModel(name: 'Mercedes', image: AppImageAsset.marc),
    CarBrandModel(name: 'Ferrari', image: AppImageAsset.ferrari),
    CarBrandModel(name: 'Lamborghini', image: AppImageAsset.lamborghini),
  ];
  @override
  void onInit() {
    super.onInit();
    getCars();
  }

  Future<void> getCars() async {
    statusRequest = StatusRequest.loading;
    update();

    Crud crud = Crud();
    var response = await crud.getData(ApiLinks.get_cars);

    response.fold(
      (failure) {
        statusRequest = StatusRequest.failure;
        message =
            failure == StatusRequest.offlineFailure
                ? 'تحقق من الاتصال بالانترنت'
                : 'حدث خطأ';
        Get.snackbar('Error', message, snackPosition: SnackPosition.TOP);
        update();
        cars = [];
      },
      (data) {
        if (data != null && data['status'] == true && data['data'] is List) {
          cars =
              (data['data'] as List)
                  .map((item) => CarModel.fromJson(item))
                  .toList();
          statusRequest = StatusRequest.success;
        } else {
          message = 'حدث خطأ';
          cars = [];
          statusRequest = StatusRequest.failure;
          Get.snackbar('خطأ', message, snackPosition: SnackPosition.BOTTOM);
        }

        update();
      },
    );
  }
}
