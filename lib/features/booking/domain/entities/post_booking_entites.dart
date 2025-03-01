class PostBookingEntites {
  PostBookingEntites({
      this.status, 
      this.message, 
      this.booking,});

  String? status;
  String? message;
  EntitesBooking? booking;


}

class EntitesBooking {
  EntitesBooking({
      this.user, 
      this.advertisement, 
      this.rentalPeriod, 
      this.paymentMethod, 
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.v,});

  String? user;
  String? advertisement;
  RentalPeriod? rentalPeriod;
  String? paymentMethod;
  String? id;
  String? createdAt;
  String? updatedAt;
  num? v;


}

class RentalPeriod {
  RentalPeriod({
      this.start, 
      this.end,});

  Start? start;
  End? end;


}

class End {
  End({
      this.date, 
      this.time,});

  String? date;
  String? time;


}

class Start {
  Start({
      this.date, 
      this.time,});

  String? date;
  String? time;

}