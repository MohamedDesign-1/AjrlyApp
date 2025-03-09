import '../../domain/entities/booking_entities.dart';

class BookingModel extends BookingEntities{
  BookingModel({
    super.status,
    super.metadata,
    super.data,});

  BookingModel.fromJson(dynamic json) {
    status = json['status'];
    metadata = json['metadata'] != null ? BookingMetadataModel.fromJson(json['metadata']) : null;
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(BookingDataModel.fromJson(v));
      });
    }
  }


}

class BookingDataModel extends BookingDataEntities{
  BookingDataModel({
    super.rentalPeriod,
    super.id,
    super.user,
    super.advertisement,
    super.paymentMethod,
    super.createdAt,
    super.updatedAt,
    super.v,});

  BookingDataModel.fromJson(dynamic json) {
    rentalPeriod = json['rentalPeriod'] != null ? RentalPeriodModel.fromJson(json['rentalPeriod']) : null;
    id = json['_id'];
    user = json['user'];
    advertisement = json['advertisement'] != null ? BookingAdvertisementModel.fromJson(json['advertisement']) : null;
    paymentMethod = json['paymentMethod'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
  }



}

class BookingAdvertisementModel extends BookingAdvertisementEntities{
  BookingAdvertisementModel({
    super.id,
    super.title,
    super.vehicleType,
    super.vehicleCategory,
    super.numberOfSeats,
    super.price,
    super.location,
    super.fuelType,
    super.mileage,
    super.transmissionType,
  });

  BookingAdvertisementModel.fromJson(dynamic json) {
    id = json['_id'];
    title = json['title'];
    vehicleType = json['vehicleType'];
    vehicleCategory = json['vehicleCategory'];
    numberOfSeats = json['numberOfSeats'];
    price = json['price'];
    location = json['location'];
    fuelType = json['fuelType'];
    mileage = json['mileage'];
    transmissionType = json['transmissionType'];
  }

}

class RentalPeriodModel extends RentalPeriodEntities{
  RentalPeriodModel({
    super.start,
    super.end,});

  RentalPeriodModel.fromJson(dynamic json) {
    start = json['start'] != null ? StartModel.fromJson(json['start']) : null;
    end = json['end'] != null ? EndModel.fromJson(json['end']) : null;
  }


}

class EndModel extends EndEntities{
  EndModel({
    super.date,
    super.time,});

  EndModel.fromJson(dynamic json) {
    date = json['date'];
    time = json['time'];
  }


}

class StartModel extends StartEntities{
  StartModel({
    super.date,
    super.time,});

  StartModel.fromJson(dynamic json) {
    date = json['date'];
    time = json['time'];
  }


}

class BookingMetadataModel extends BookingMetadataEntities{
  BookingMetadataModel({
    super.total,
    super.page,
    super.nextPage,
    super.totalPages,
    super.limit,});

  BookingMetadataModel.fromJson(dynamic json) {
    total = json['total'];
    page = json['page'];
    nextPage = json['nextPage'];
    totalPages = json['totalPages'];
    limit = json['limit'];
  }

}