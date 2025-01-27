class LoginResponseEntity {
  String? status;
  String? message;
  UserResponseEntity? user;
  String? token;

  LoginResponseEntity({
      this.status, 
      this.message, 
      this.user, 
      this.token,});
}

class UserResponseEntity {
  String? email;
  String? fullName;
  String? mobile;
  String? nationalId;
  String? birthday;
  String? role;

  UserResponseEntity({
      this.email, 
      this.fullName, 
      this.mobile, 
      this.nationalId, 
      this.birthday, 
      this.role,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['fullName'] = fullName;
    map['mobile'] = mobile;
    map['nationalId'] = nationalId;
    map['birthday'] = birthday;
    map['role'] = role;
    return map;
  }
}