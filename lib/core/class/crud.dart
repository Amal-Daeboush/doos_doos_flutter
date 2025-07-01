import 'dart:convert';
import 'dart:io';

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
Future<Either<StatusRequest, dynamic>> postData(
  String url,
  Map<dynamic, dynamic> data,
  Map<String, String> headers,
  bool saveToken,
) async {
  try {
    if (await HelperFunctions.checkInternet()) {
      final response = await http.post(
        Uri.parse(url),
        body: data,
        headers: headers,
      );

      final decodeResponse = json.decode(response.body);
      print('Response: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        // ✅ حفظ التوكن والمستخدم عند النجاح
        if (saveToken && decodeResponse.containsKey('access_token')) {
          var token = decodeResponse['access_token'];
          var user = UserModel.fromRawJson(response.body);

          await MyServices.saveValue(SharedPreferencesKey.tokenkey, token);
          await MyServices().setConstToken();
          await MyServices().saveUserInfo(user);
          await MyServices().setConstuser();
        }

        // ✅ أعد البيانات كلها
        return Right(decodeResponse);
      }

      // ❌ معالجة الأخطاء
      String errorMessage = 'حدث خطأ غير متوقع';

      if (decodeResponse.containsKey('error')) {
        errorMessage = decodeResponse['error'].toString();
      } else if (decodeResponse.containsKey('message')) {
        errorMessage = decodeResponse['message'].toString();
      } else if (decodeResponse.containsKey('errors')) {
        var errors = decodeResponse['errors'];
        if (errors is Map<String, dynamic>) {
          errorMessage = errors.values
              .map((e) => e is List ? e.join(', ') : e.toString())
              .join('\n');
        }
      } else if (decodeResponse is String) {
        errorMessage = decodeResponse;
      }

      return Right(errorMessage);
    } else {
      return const Left(StatusRequest.offlineFailure);
    }
  } catch (error) {
    print('Error: $error');
    return Right('فشل الاتصال بالخادم: $error');
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

Future<Either<StatusRequest, dynamic>> postMultipartData(
  String url,
  Map<String, String> fields,
  Map<String, File> files, 
  Map<String, String> headers,
) async {
  try {
    if (await HelperFunctions.checkInternet()) {
      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.headers.addAll(headers);

      fields.forEach((key, value) {
        request.fields[key] = value;
      });

      for (var entry in files.entries) {
        var fileStream = http.ByteStream(entry.value.openRead());
        var length = await entry.value.length();
        var fileName = entry.value.path.split('/').last;

        request.files.add(
          http.MultipartFile(
            entry.key, 
            fileStream,
            length,
            filename: fileName,
          ),
        );
      }

      var response = await request.send();

      var responseBody = await response.stream.bytesToString();
      print('Response: $responseBody');

      if (response.statusCode == 200 || response.statusCode == 201) {
        var decodedJson = jsonDecode(responseBody);
        return Right(decodedJson); // ترجع البيانات المفككة
      } else {
        return Left(StatusRequest.failure);
      }
    } else {
      return Left(StatusRequest.offlineFailure);
    }
  } catch (error) {
    print('Error: $error');
    return Left(StatusRequest.failure);
  }
}



}
