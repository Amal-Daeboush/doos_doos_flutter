import 'dart:convert';

class UserModel {
    final String? accessToken;
    final User? user;

    UserModel({
        this.accessToken,
        this.user,
    });

    factory UserModel.fromRawJson(String str) => UserModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        accessToken: json["access_token"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "user": user?.toJson(),
    };
}

class User {
    final int? id;
    final String? name;
    final String? email;
    final String? phone;
    final String? country;
    final DateTime? emailVerifiedAt;
    final String? hasLicense;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final dynamic? isCompany;
    final dynamic otp;
    final String? type;

    User({
        this.id,
        this.name,
        this.email,
        this.phone,
        this.country,
        this.emailVerifiedAt,
        this.hasLicense,
        this.createdAt,
        this.updatedAt,
        this.isCompany,
        this.otp,
        this.type,
    });

    factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        country: json["country"],
        emailVerifiedAt: json["email_verified_at"] == null ? null : DateTime.parse(json["email_verified_at"]),
        hasLicense: json["has_license"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        isCompany: json["is_company"],
        otp: json["otp"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "country": country,
        "email_verified_at": emailVerifiedAt?.toIso8601String(),
        "has_license": hasLicense,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "is_company": isCompany,
        "otp": otp,
        "type": type,
    };
}
