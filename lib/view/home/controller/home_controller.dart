import 'package:doss_doss/core/constant/app_image_asset.dart';
import 'package:doss_doss/model/car_brand_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<CarBrandModel> carBrands = [
    CarBrandModel(name: 'Nissan', image: AppImageAsset.nissan),
    CarBrandModel(name: 'Tesla', image: AppImageAsset.tess),
    CarBrandModel(name: 'BMW', image: AppImageAsset.BME),
    CarBrandModel(name: 'Mercedes', image: AppImageAsset.marc),
    CarBrandModel(name: 'Ferrari', image: AppImageAsset.ferrari),
    CarBrandModel(name: 'Lamborghini', image: AppImageAsset.lamborghini),
  ];
}
