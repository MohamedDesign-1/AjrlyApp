class RegisterResponseEntity {
  RegisterResponseEntity({
      this.status, 
      this.message, 
      this.user, 
      this.token,});

  String? status;
  String? message;
  RegisterUserEntity? user;
  String? token;


}

class RegisterUserEntity {
  RegisterUserEntity({
      this.email, 
      this.fullName, 
      this.mobile, 
      this.nationalId, 
      this.birthday, 
      this.role,});

  String? email;
  String? fullName;
  String? mobile;
  String? nationalId;
  String? birthday;
  String? role;

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