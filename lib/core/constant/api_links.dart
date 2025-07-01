import 'package:doss_doss/core/constant/const_data.dart';

class ApiLinks {
  static const String server = "http://192.168.1.12:8000/api";
  //static const String server= "https://highleveltecknology.com/doos/api";
  // ================================= Images ================================== //
  static const String imagesStatic = "";
  // ================================= Auth ================================== //
  static const String register = "$server/register";
  static const String login = "$server/login";
  static const String google = "$server/auth/google/redirect";
  static const String facebook = "$server/auth/facebook/redirect";
  static const String verify_email = "$server/verfiy_email";
  static const String forget_pass = "$server/sendOTP";
  static const String reseve_otp = "$server/receiveOTP";
  static const String reset_pass = "$server/resetpassword";

  // ================================= car ================================== //
  static const String cars_filter = "$server/cars/filter";
  static const String get_cars = "$server/cars/index";
  // ================================= booking ================================== //
  static const String booking_car = "$server/renter/cars/bookings/store";
  // ================================= favorites =====================
  static const String getFavoriteProduct =
      "$server/user/favourites/products/get_all";
  static const String addFavoriteProduct = "$server/user/favourites/add";
  static const String removeFavoriteProduct = "$server/user/favourites/remove";

  // ================================= profiles =====================
  static const String storeProfile = "$server/profile/store_profile";
  static const String updateProfile = "$server/profile/update_my_profile";
  static const String getProfile = "$server/profile/get_my_profile";
  static const String postPass = "$server/user/my_info/update";

  // ================================= chat =====================
  static const String getConversations = "$server/getInteractedUsers";
  static const String getConversation = "$server/getConversation";
  static const String sendMessage = "$server/SendTo";

  Map<String, String> getHeader() {
    Map<String, String> mainHeader = {'Accept': 'application/json'};

    return mainHeader;
  }

  Map<String, String> getHeaderWithToken() {
    Map<String, String> mainHeader = {
      'Accept': 'application/json',

      "Authorization": "Bearer ${ConstData.token}",
    };
    return mainHeader;
  }
}
