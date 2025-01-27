import 'package:ajrly/features/auth/register_screen/domain/entities/register_response_entity.dart';

class RegisterResponseDto extends RegisterResponseEntity{
  RegisterResponseDto({
    super.status,
    super.message,
    super.user,
    super.token,
  });

  RegisterResponseDto.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    user = json['user'] != null ? RegisterUserResponseDto.fromJson(json['user']) : null;
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

class RegisterUserResponseDto extends RegisterUserEntity{
  RegisterUserResponseDto({
    super.email,
    super.fullName,
    super.mobile,
    super.nationalId,
    super.birthday,
    super.role,
  });

  RegisterUserResponseDto.fromJson(dynamic json) {
    email = json['email'];
    fullName = json['fullName'];
    mobile = json['mobile'];
    nationalId = json['nationalId'];
    birthday = json['birthday'];
    role = json['role'];
  }

}
