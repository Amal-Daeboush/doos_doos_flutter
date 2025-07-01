class CarModel {
  final int? id;
  final String? make;
  final int? ownerId;
  final String? model;
  final int? year;
  final String? description;
  final String? address;
  final String? vin;
  final String? number;
  final String? status;
  final String? price;
  final String? lat;
  final String? lang;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? isRented;
  final String? imageLicense;
  final String? numberLicense;
  final String? state;
  final String? descriptionCondition;
  final String? advancedNotice;
  final int? minDayTrip;
  final int? maxDayTrip;
  final String? day;
  final int? isPaid;
  final CarsFeatures? carsFeatures;
  final List<CarImage>? carImage;

  CarModel({
    this.id,
    this.make,
    this.ownerId,
    this.model,
    this.year,
    this.description,
    this.address,
    this.vin,
    this.number,
    this.status,
    this.price,
    this.lat,
    this.lang,
    this.createdAt,
    this.updatedAt,
    this.isRented,
    this.imageLicense,
    this.numberLicense,
    this.state,
    this.descriptionCondition,
    this.advancedNotice,
    this.minDayTrip,
    this.maxDayTrip,
    this.day,
    this.isPaid,
    this.carsFeatures,
    this.carImage,
  });
factory CarModel.fromJson(Map<String, dynamic> json) {
  return CarModel(
    id: json['id'],
    make: json['make'],
    ownerId: json['owner_id'],
    model: json['model'],
    year: json['year'] is int ? json['year'] : int.tryParse(json['year'].toString()),
    description: json['description'],
    address: json['address'],
    vin: json['vin'],
    number: json['number'],
    status: json['status'],
    price: json['price']?.toString(),
    lat: json['lat']?.toString(),
    lang: json['lang']?.toString(),
    createdAt: json['created_at'] != null ? DateTime.tryParse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.tryParse(json['updated_at']) : null,
    isRented: json['is_rented'],
    imageLicense: json['image_license'],
    numberLicense: json['number_license'],
    state: json['state'],
    descriptionCondition: json['description_condition'],
    advancedNotice: json['advanced_notice'],
    minDayTrip: json['min_day_trip'],
    maxDayTrip: json['max_day_trip'],
    day: json['day']?.toString(),
    isPaid: json['is_paid'],
    carsFeatures: json['cars_features'] != null
        ? CarsFeatures.fromJson(json['cars_features'])
        : null,
    carImage: (json['car_image'] as List<dynamic>?)
            ?.map((e) => CarImage.fromJson(e))
            .toList() ?? [],
  );
}

}
class CarsFeatures {
  final String? mileageRange;
  final String? transmission;
  final String? mechanicalCondition;
  final bool? allHaveSeatbelts;
  final int? numOfDoor;
  final int? numOfSeat;
  final List<String>? additionalFeatures;

  CarsFeatures({
    this.mileageRange,
    this.transmission,
    this.mechanicalCondition,
    this.allHaveSeatbelts,
    this.numOfDoor,
    this.numOfSeat,
    this.additionalFeatures,
  });

  factory CarsFeatures.fromJson(Map<String, dynamic> json) {
    return CarsFeatures(
      mileageRange: json['mileage_range'],
      transmission: json['transmission'],
      mechanicalCondition: json['mechanical_condition'],
      allHaveSeatbelts: json['all_have_seatbelts'],
      numOfDoor: json['num_of_door'],
      numOfSeat: json['num_of_seat'],
      additionalFeatures: (json['additional_features'] as List<dynamic>?)
          ?.map((e) => e.toString())
          .toList(),
    );
  }
}
class CarImage {
  final int? id;
  final int? carsId;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  CarImage({
    this.id,
    this.carsId,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory CarImage.fromJson(Map<String, dynamic> json) {
    return CarImage(
      id: json['id'],
      carsId: json['cars_id'],
      image: json['image'],
      createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
      updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
    );
  }
}
