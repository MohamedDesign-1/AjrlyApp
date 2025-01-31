class GetAllAdsEntity {
  String? status;
  GetAdsMetaData? metadata;
  List<AdsDataEntity>? data;

  GetAllAdsEntity({
      this.status, 
      this.metadata, 
      this.data,});


}

class AdsDataEntity {
  String? id;
  String? user;
  String? title;
  String? description;
  String? vehicleType;
  String? vehicleCategory;
  num? numberOfSeats;
  String? rentalPeriod;
  num? mileage;
  String? fuelType;
  String? transmissionType;
  num? price;
  List<String>? images;
  String? location;
  bool? availabilityStatus;
  String? approvalStatus;
  dynamic rejectionReason;
  dynamic rejectedAt;
  String? approvedAt;
  String? createdAt;
  String? updatedAt;
  num? v;

  AdsDataEntity({
      this.id, 
      this.user, 
      this.title, 
      this.description, 
      this.vehicleType, 
      this.vehicleCategory, 
      this.numberOfSeats, 
      this.rentalPeriod, 
      this.mileage, 
      this.fuelType, 
      this.transmissionType, 
      this.price, 
      this.images, 
      this.location, 
      this.availabilityStatus, 
      this.approvalStatus, 
      this.rejectionReason, 
      this.rejectedAt, 
      this.approvedAt, 
      this.createdAt, 
      this.updatedAt, 
      this.v,
  });


  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'user': user,
      'title': title,
      'description': description,
      'vehicleType': vehicleType,
      'vehicleCategory': vehicleCategory,
      'numberOfSeats': numberOfSeats,
      'rentalPeriod': rentalPeriod,
      'mileage': mileage,
      'fuelType': fuelType,
      'transmissionType': transmissionType,
      'price': price,
      'images': images,
      'location': location,
      'availabilityStatus': availabilityStatus,
      'approvalStatus': approvalStatus,
      'rejectionReason': rejectionReason,
      'rejectedAt': rejectedAt,
      'approvedAt': approvedAt,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      '__v': v,
    };
  }

}

class GetAdsMetaData {
  num? total;
  num? page;
  dynamic nextPage;
  num? totalPages;
  num? limit;

  GetAdsMetaData({
      this.total, 
      this.page, 
      this.nextPage, 
      this.totalPages, 
      this.limit,
  });


  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'page': page,
      'nextPage': nextPage,
      'totalPages': totalPages,
      'limit': limit,
    };
  }

}