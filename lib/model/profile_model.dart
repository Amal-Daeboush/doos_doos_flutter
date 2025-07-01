// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
    int? id;
    int? userId;
    String? firstName;
    String? lastName;
    String? address1;
    String? address2;
    String? zipCode;
    String? city;
    String? image;
    DateTime? createdAt;
    DateTime? updatedAt;

    ProfileModel({
        this.id,
        this.userId,
        this.firstName,
        this.lastName,
        this.address1,
        this.address2,
        this.zipCode,
        this.city,
        this.image,
        this.createdAt,
        this.updatedAt,
    });

    ProfileModel copyWith({
        int? id,
        int? userId,
        String? firstName,
        String? lastName,
        String? address1,
        String? address2,
        String? zipCode,
        String? city,
        dynamic image,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) => 
        ProfileModel(
            id: id ?? this.id,
            userId: userId ?? this.userId,
            firstName: firstName ?? this.firstName,
            lastName: lastName ?? this.lastName,
            address1: address1 ?? this.address1,
            address2: address2 ?? this.address2,
            zipCode: zipCode ?? this.zipCode,
            city: city ?? this.city,
            image: image ?? this.image,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );

    factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["id"],
        userId: json["user_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        address1: json["address_1"],
        address2: json["address_2"],
        zipCode: json["zip_code"],
        city: json["city"],
        image: json["image"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "first_name": firstName,
        "last_name": lastName,
        "address_1": address1,
        "address_2": address2,
        "zip_code": zipCode,
        "city": city,
        "image": image,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
