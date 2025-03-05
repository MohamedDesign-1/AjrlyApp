class EndPoints {
  static const String baseUrl = '/api/v1';
  // todo: Auth Apis
  static const String login = '$baseUrl/authentication/login';
  static const String register = '$baseUrl/authentication/register';
  // todo: Ads Api
  static const String advertisementsApi = '$baseUrl/ads';
  //todo: Profile Api
  static const String profileApi = '$baseUrl/users/profile';
  //todo: Booking Api
  static const String bookingApi = '$baseUrl/bookings';
}