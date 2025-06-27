import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:doss_doss/core/sevices/key_shared_perfences.dart';
import 'package:doss_doss/core/sevices/sevices.dart';
import 'package:doss_doss/model/user_model.dart';
import 'package:http/http.dart' as http;

import '../constant/const_data.dart';
import 'helper_functions.dart';
import 'status_request.dart';

String _bearerToken = 'Bearer ${ConstData.token}';

Map<String, String> myHeaders = {
  'authorization': _bearerToken,
  'Accept': 'application/json'
};

class Crud {
  Future<Either<StatusRequest, String>> postData(
    String url,
    Map<dynamic, dynamic> data,
    Map<String, String> headers,
    bool saveToken,
  ) async {
    try {
      if (await HelperFunctions.checkInternet()) {
        var response = await http.post(
          Uri.parse(url),
          body: data,
          headers: headers,
        );

        var decodeResponse = json.decode(response.body);
        print('Response: ${response.body}');

        if (response.statusCode == 200 || response.statusCode == 201) {
          if (saveToken) {
            var token = decodeResponse['access_token'];
            var user = UserModel.fromRawJson(response.body);

            await MyServices.saveValue(SharedPreferencesKey.tokenkey, token);

            await MyServices().setConstToken();
            await MyServices().saveUserInfo(user);
            await MyServices().setConstuser();
          }
          return const Left(StatusRequest.success);
        } else {
          // ✅ التأكد من استخراج `message` أو `errors`
          String errorMessage = 'Unknown error occurred';
          if (decodeResponse.containsKey('message')) {
            errorMessage = decodeResponse['message'];
          } else if (decodeResponse.containsKey('errors')) {
            var errors = decodeResponse['errors'];
            if (errors is Map<String, dynamic>) {
              errorMessage = errors.values.map((e) => e.join(', ')).join('\n');
            }
          }

          return Right(errorMessage);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (error) {
      print('Error: $error');
      return const Left(StatusRequest.failure);
    }
  }


  Future<Either<StatusRequest, Map>> getData(String linkUrl) async {
    try {
      if (await HelperFunctions.checkInternet()) {
        var response = await http.get(Uri.parse(linkUrl), headers: myHeaders);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print("==================== responsebody$responsebody");
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverException);
    }
  }
}
