class EndPoints {
  static const String baseUrl = '/api/v1';

  static const String login = '$baseUrl/student/authentication/login';
  static const String getInfoStudent = '$baseUrl/student/studentInfo';
  static const String changePassword = '$baseUrl/student/studentInfo/changePassword';
  static const String getInfoStudentExamDetails = '$baseUrl/student/seatNumbers';
  static const String getStudentResult = '$baseUrl/student/results';
  static const String getStudentEmail = '$baseUrl/student/emails';
  static const String fcmToken = '$baseUrl/student/fcm';
  static const String getAllNews = '$baseUrl/student/announcements';
  static const String lectureSchedule = '$baseUrl/student/lectureSchedules';
  static const String examSchedule = '$baseUrl/student/examSchedules';

}