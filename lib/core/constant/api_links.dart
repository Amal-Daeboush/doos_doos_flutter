import 'package:doss_doss/core/constant/const_data.dart';


class ApiLinks {
  //static const String server = "http://192.168.1.12:8000/api";
  static const String server= "https://highleveltecknology.com/doss/api";
  // ================================= Images ================================== //
  static const String imagesStatic = "";
  // ================================= Auth ================================== //
  static const String register = "$server/register";
  static const String login = "$server/login";
  static const String google = "$server/auth/google/redirect";
  static const String facebook = "$server/auth/facebook/redirect";
  static const String verify_otp = "$server/verify_otp";

  // ================================= CATEGORY ================================== //
  static const String getCategories = "$server/user/categories/get_all";
  // ================================= favorites =====================
  static const String getFavoriteProduct =
      "$server/user/favourites/products/get_all";
  static const String addFavoriteProduct = "$server/user/favourites/add";
  static const String removeFavoriteProduct = "$server/user/favourites/remove";

  // ================================= profiles =====================
  static const String storeProfile = "$server/user/profile/store";
  static const String updateProfile = "$server/user/profile/update";
  static const String getProfile = "$server/user/my_info/get";
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
