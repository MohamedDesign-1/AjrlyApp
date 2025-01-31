import '../../domain/entities/ads_entity.dart';

class GetAllAdsModel extends GetAllAdsEntity {
  GetAllAdsModel({
    super.status,
    super.metadata,
    super.data,});

  GetAllAdsModel.fromJson(dynamic json) {
    status = json['status'];
    metadata = json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(AdsDataDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (metadata != null) {
      map['metadata'] = metadata?.toJson();
    }
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class AdsDataDto extends AdsDataEntity {
  AdsDataDto({
    super.id,
    super.user,
    super.title,
    super.description,
    super.vehicleType,
    super.vehicleCategory,
    super.numberOfSeats,
    super.rentalPeriod,
    super.mileage,
    super.fuelType,
    super.transmissionType,
    super.price,
    super.images,
    super.location,
    super.availabilityStatus,
    super.approvalStatus,
    super.rejectionReason,
    super.rejectedAt,
    super.approvedAt,
    super.createdAt,
    super.updatedAt,
    super.v,});

  AdsDataDto.fromJson(dynamic json) {
    id = json['_id'];
    user = json['user'];
    title = json['title'];
    description = json['description'];
    vehicleType = json['vehicleType'];
    vehicleCategory = json['vehicleCategory'];
    numberOfSeats = json['numberOfSeats'];
    rentalPeriod = json['rentalPeriod'];
    mileage = json['mileage'];
    fuelType = json['fuelType'];
    transmissionType = json['transmissionType'];
    price = json['price'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
    location = json['location'];
    availabilityStatus = json['availabilityStatus'];
    approvalStatus = json['approvalStatus'];
    rejectionReason = json['rejectionReason'];
    rejectedAt = json['rejectedAt'];
    approvedAt = json['approvedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['user'] = user;
    map['title'] = title;
    map['description'] = description;
    map['vehicleType'] = vehicleType;
    map['vehicleCategory'] = vehicleCategory;
    map['numberOfSeats'] = numberOfSeats;
    map['rentalPeriod'] = rentalPeriod;
    map['mileage'] = mileage;
    map['fuelType'] = fuelType;
    map['transmissionType'] = transmissionType;
    map['price'] = price;
    map['images'] = images;
    map['location'] = location;
    map['availabilityStatus'] = availabilityStatus;
    map['approvalStatus'] = approvalStatus;
    map['rejectionReason'] = rejectionReason;
    map['rejectedAt'] = rejectedAt;
    map['approvedAt'] = approvedAt;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['__v'] = v;
    return map;
  }

}

class Metadata extends GetAdsMetaData {
  Metadata({
    super.total,
    super.page,
    super.nextPage,
    super.totalPages,
    super.limit,});

  Metadata.fromJson(dynamic json) {
    total = json['total'];
    page = json['page'];
    nextPage = json['nextPage'];
    totalPages = json['totalPages'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['page'] = page;
    map['nextPage'] = nextPage;
    map['totalPages'] = totalPages;
    map['limit'] = limit;
    return map;
  }

}