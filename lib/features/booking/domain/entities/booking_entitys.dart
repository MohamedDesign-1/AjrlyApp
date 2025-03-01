class BookingEntities {
  BookingEntities({
      this.status, 
      this.metadata, 
      this.data,});

  String? status;
  BookingMetadata? metadata;
  List<dynamic>? data;


}

class BookingMetadata {
  BookingMetadata({
      this.total, 
      this.page, 
      this.nextPage, 
      this.totalPages, 
      this.limit,
  });

  num? total;
  num? page;
  dynamic nextPage;
  num? totalPages;
  num? limit;

}