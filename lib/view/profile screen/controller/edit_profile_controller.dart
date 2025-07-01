import 'dart:io';
import 'package:doss_doss/core/class/crud.dart';
import 'package:doss_doss/core/class/status_request.dart';
import 'package:doss_doss/core/constant/api_links.dart';
import 'package:doss_doss/core/sevices/sevices.dart';
import 'package:doss_doss/model/api%20remote/api_model.dart';
import 'package:doss_doss/model/profile_model.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileController extends GetxController {
  final bool verifydetailsInHost;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController address_1Controller = TextEditingController();
  TextEditingController address_2Controller = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  ProfileModel? profileModel;
  StatusRequest statusRequest = StatusRequest.none;
  String message = '';
  bool isLocalProfile = false;
  Rxn<File>? selectedImage = Rxn<File>();
  String? imageUrl;
  final ImagePicker picker = ImagePicker();
  EditProfileController({required this.verifydetailsInHost});
  void onInit() {
    super.onInit();
    getProfile();
  }

  void pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      selectedImage!.value = File(pickedFile.path);
    }
  }

  Future<void> getProfile() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await Crud().getData(ApiLinks.getProfile);

    response.fold(
      (failure) async {
        statusRequest = StatusRequest.failure;
        message =
            failure == StatusRequest.offlineFailure
                ? 'تحقق من الاتصال بالإنترنت'
                : 'حدث خطأ أثناء جلب البيانات';
        Get.snackbar('خطأ', message);
        update();
      },
      (data) async {
        if (data.isEmpty) {
          ProfileModel? localProfile = await MyServices().getProfile();
          if (localProfile != null) {
            profileModel = localProfile;
            _fillFormFields(localProfile);
            isLocalProfile = true; //
            Get.snackbar('تنبيه', 'تم تحميل نسخة محفوظة من البيانات');
          } else {
            profileModel = null;
          }
          statusRequest = StatusRequest.success;
        } else {
          // ✅ البيانات من السيرفر موجودة
          try {
            profileModel = ProfileModel.fromJson(
              Map<String, dynamic>.from(data),
            );

            firstNameController.text = profileModel?.firstName ?? '';
            lastNameController.text = profileModel?.lastName ?? '';
            address_1Controller.text = profileModel?.address1 ?? '';
            address_2Controller.text = profileModel?.address2 ?? '';
            zipCodeController.text = profileModel?.zipCode ?? '';
            cityController.text = profileModel?.city ?? '';
            imageUrl = profileModel?.image ?? null;
            selectedImage!.value = null;
            update();

            statusRequest = StatusRequest.success;
          } catch (e) {
            statusRequest = StatusRequest.failure;
            message = 'حدث خطأ أثناء تحليل البيانات';
            Get.snackbar('خطأ', message);
          }
        }

        update();
      },
    );
  }

  storeProfile() async {
    if (firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        zipCodeController.text.isEmpty ||
        cityController.text.isEmpty) {
      Get.snackbar('تنبيه', 'يرجى ملء الحقول المطلوبة');
      return;
    }

    FocusManager.instance.primaryFocus?.unfocus(); // اغلق الكيبورد
    statusRequest = StatusRequest.loading;
    update();

    final body = {
      'first_name': firstNameController.text,
      'last_name': lastNameController.text,
      'city': cityController.text,
      'zip_code': zipCodeController.text,
      'address_1': address_1Controller.text,
      if (address_2Controller.text.isNotEmpty)
        'address_2': address_2Controller.text,
    };

    final Map<String, File> files = {};
    final imageFile = selectedImage?.value;
    if (imageFile != null) {
      files['image'] = imageFile;
    }

    final response = await ApiRemote().storeProfileModel(
      profileModel == null || isLocalProfile ? true : false,
      body,
      files,
    );

    try {
      if (response is Map<String, dynamic>) {
        final profileData = response['0'] ?? response;
        profileModel = ProfileModel.fromJson(profileData);
        // await MyServices()(profileModel!);

        firstNameController.text = profileModel?.firstName ?? '';
        lastNameController.text = profileModel?.lastName ?? '';
        address_1Controller.text = profileModel?.address1 ?? '';
        address_2Controller.text = profileModel?.address2 ?? '';
        zipCodeController.text = profileModel?.zipCode ?? '';
        cityController.text = profileModel?.city ?? '';

        statusRequest = StatusRequest.success;
        update();

        print("تم حفظ البيانات بنجاح");
        Get.snackbar('نجاح', 'تم حفظ البروفايل بنجاح');
        print("Can pop: ${Get.key.currentState?.canPop()}");
        await Future.delayed(Duration(milliseconds: 400));
        //  Get.back();
        //   Navigator.of(Get.context!).pop();
      } else {
        Get.snackbar('خطأ', response.toString());
        await Future.delayed(Duration(milliseconds: 400));
        statusRequest = StatusRequest.failure;
        update();
      }
    } catch (e) {
      await Future.delayed(Duration(milliseconds: 400));
      Get.snackbar('خطأ', 'فشل: $e');
      statusRequest = StatusRequest.failure;
      update();
    }
    Navigator.of(Get.context!).pop();
  }

  void saveForLater() async {
    final profile = ProfileModel(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      city: cityController.text,
      zipCode: zipCodeController.text,
      address1: address_1Controller.text,
      address2: address_2Controller.text,
    );

    await MyServices().saveProfileInfo(profile);

    Get.back();
    Get.snackbar('تم الحفظ', 'تم حفظ البيانات مؤقتًا');
  }

  void _fillFormFields(ProfileModel profile) {
    firstNameController.text = profile.firstName ?? '';
    lastNameController.text = profile.lastName ?? '';
    address_1Controller.text = profile.address1 ?? '';
    address_2Controller.text = profile.address2 ?? '';
    zipCodeController.text = profile.zipCode ?? '';
    cityController.text = profile.city ?? '';
  }
}
