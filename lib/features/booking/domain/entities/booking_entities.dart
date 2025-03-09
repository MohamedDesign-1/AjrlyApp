class BookingEntities {
  BookingEntities({
      this.status, 
      this.metadata, 
      this.data,});

  String? status;
  BookingMetadataEntities? metadata;
  List<BookingDataEntities>? data;


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

class BookingDataEntities {
  BookingDataEntities({
      this.rentalPeriod, 
      this.id, 
      this.user, 
      this.advertisement, 
      this.paymentMethod, 
      this.createdAt, 
      this.updatedAt, 
      this.v,});

  RentalPeriodEntities? rentalPeriod;
  String? id;
  String? user;
  BookingAdvertisementEntities? advertisement;
  String? paymentMethod;
  String? createdAt;
  String? updatedAt;
  num? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (rentalPeriod != null) {
      map['rentalPeriod'] = rentalPeriod?.toJson();
    }
    map['_id'] = id;
    map['user'] = user;
    if (advertisement != null) {
      map['advertisement'] = advertisement?.toJson();
    }
    map['paymentMethod'] = paymentMethod;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['__v'] = v;
    return map;
  }

}

class BookingAdvertisementEntities {
  BookingAdvertisementEntities({
      this.id, 
      this.title, 
      this.vehicleType, 
      this.vehicleCategory, 
      this.numberOfSeats, 
      this.price, 
      this.location,
      this.mileage,
      this.fuelType,
      this.transmissionType,
  });

  String? id;
  String? title;
  String? vehicleType;
  String? vehicleCategory;
  num? numberOfSeats;
  num? price;
  String? location;
  num? mileage;
  String? fuelType;
  String? transmissionType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['title'] = title;
    map['vehicleType'] = vehicleType;
    map['vehicleCategory'] = vehicleCategory;
    map['numberOfSeats'] = numberOfSeats;
    map['price'] = price;
    map['location'] = location;
    map['mileage'] = mileage;
    map['fuelType'] = fuelType;
    map['transmissionType'] = transmissionType;
    return map;
  }


}

class RentalPeriodEntities {
  RentalPeriodEntities({
      this.start, 
      this.end,});

  StartEntities? start;
  EndEntities? end;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (start != null) {
      map['start'] = start?.toJson();
    }
    if (end != null) {
      map['end'] = end?.toJson();
    }
    return map;
  }


}

class EndEntities {
  EndEntities({
      this.date, 
      this.time,});

  String? date;
  String? time;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['time'] = time;
    return map;
  }


}

class StartEntities {
  StartEntities({
      this.date, 
      this.time,});


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['time'] = time;
    return map;
  }


  String? date;
  String? time;


}

class BookingMetadataEntities {
  BookingMetadataEntities({
      this.total, 
      this.page, 
      this.nextPage, 
      this.totalPages, 
      this.limit,});

  num? total;
  num? page;
  dynamic nextPage;
  num? totalPages;
  num? limit;

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