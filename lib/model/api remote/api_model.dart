import 'dart:io';
import 'package:doss_doss/core/class/crud.dart';
import 'package:doss_doss/core/constant/api_links.dart';

class ApiRemote {
  Crud crud = Crud();

  Future<dynamic> signUpModel(Map<String, dynamic> data) async {
    var response = await Crud().postData(
      '${ApiLinks.register}',
      data,
      ApiLinks().getHeader(),
      false,
    );

    return response.fold((l) => l, (r) => r);
  }

  Future<dynamic> verficationdModel(
    Map<String, dynamic> data,
    bool isResetpass,
  ) async {
    var response = await Crud().postData(
      isResetpass ? '${ApiLinks.reseve_otp}' : '${ApiLinks.verify_email}',
      data,
      ApiLinks().getHeader(),
      false,
    );

    return response.fold((l) => l, (r) => r);
  }

Future<dynamic> storeProfileModel(
  bool isStore,
  Map<String, String> data,
  Map<String, File> files,
) async {
  var response = await Crud().postMultipartData(
    isStore ? ApiLinks.storeProfile : ApiLinks.updateProfile,
    data,
    files,
    ApiLinks().getHeaderWithToken(),
  );

  return response.fold((l) => l, (r) => r);
}


  Future<dynamic> loginModel(Map<String, dynamic> data) async {
    var response = await Crud().postData(
      ApiLinks.login,
      data,
      ApiLinks().getHeader(),
      true, // لحفظ التوكن
    );

    return response.fold(
      (l) => l, // StatusRequest
      (r) => r, // Map أو رسالة نصية
    );
  }

  Future<dynamic> forgetpassModel(Map<String, dynamic> data) async {
    var response = await Crud().postData(
      ApiLinks.forget_pass,
      data,
      ApiLinks().getHeader(),
      false,
    );

    return response.fold((l) => l, (r) => r);
  }

  Future<dynamic> resetpassModel(Map<String, dynamic> data) async {
    var response = await Crud().postData(
      ApiLinks.reset_pass,
      data,
      ApiLinks().getHeader(),
      false,
    );

    return response.fold((l) => l, (r) => r);
  }
}
