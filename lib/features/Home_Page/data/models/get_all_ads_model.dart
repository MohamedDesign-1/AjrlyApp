import 'package:ajrly/features/Home_Page/domain/entities/ads_entity.dart';

class GetAllAdsModel extends GetAllAdsEntity {
  GetAllAdsModel({
    super.status,
    super.metadata,
    List<AdsDataEntity>? data,
  }) : super(data: data);

  GetAllAdsModel.fromJson(dynamic json) {
    status = json['status'];
    metadata = json['metadata'] != null ? GetAdsMetadata.fromJson(json['metadata']) : null;
    if (json['data'] != null) {
      data = json['data'].map<AdsDataEntity>((v) => GetAllAdsDto.fromJson(v)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'metadata': metadata?.toJson(),
      'data': data?.map((v) => (v as GetAllAdsDto).toJson()).toList(), // تأكد من التحويل لـ GetAllAdsDto
    };
  }
}
class GetAllAdsDto extends AdsDataEntity {
  GetAllAdsDto({
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
    super.v,
  });

  GetAllAdsDto.fromJson(dynamic json) {
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
    images = json['images'] != null ? List<String>.from(json['images']) : [];
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

}

class GetAdsMetadata extends GetAdsMetaData {
  GetAdsMetadata({
    super.total,
    super.page,
    super.nextPage,
    super.totalPages,
    super.limit,
  });

  GetAdsMetadata.fromJson(dynamic json) {
    total = json['total'];
    page = json['page'];
    nextPage = json['nextPage'];
    totalPages = json['totalPages'];
    limit = json['limit'];
  }

}
