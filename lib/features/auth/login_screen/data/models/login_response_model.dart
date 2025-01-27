import '../../domain/entities/login_response_entity.dart';

class LoginResponseDto extends LoginResponseEntity {
  LoginResponseDto({
    super.status,
    super.message,
    super.user,
    super.token,});

  LoginResponseDto.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    user = json['user'] != null ? UserResponseDto.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }

}

class UserResponseDto extends UserResponseEntity {
  UserResponseDto({
    super.email,
    super.fullName,
    super.mobile,
    super.nationalId,
    super.birthday,
    super.role,});

  UserResponseDto.fromJson(dynamic json) {
    email = json['email'];
    fullName = json['fullName'];
    mobile = json['mobile'];
    nationalId = json['nationalId'];
    birthday = json['birthday'];
    role = json['role'];
  }

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