

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

  Future<dynamic> loginModel(Map<String, dynamic> data) async {
    var response = await Crud().postData(
      '${ApiLinks.login}',
      data,
      ApiLinks().getHeader(),
      true,
    );

    return response.fold(
      (l) => l, // StatusRequest.success أو StatusRequest.failure
      (r) => r, // response كـ Map<String, dynamic> عند الفشل
    );
  }

 
}
