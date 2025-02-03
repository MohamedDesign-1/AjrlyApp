import 'package:ajrly/features/profile/domain/entities/get_profile_data_entity.dart';

class GetProfileDataModel extends GetProfileDataEntity{
  GetProfileDataModel({
    super.status,
    super.message,
    super.user,});

  GetProfileDataModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    user = json['user'] != null ? GetUserProfileDataModel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class GetUserProfileDataModel extends GetUserProfileDataEntity{
  GetUserProfileDataModel({
    super.id,
    super.fullName,
    super.email,
    super.mobile,
    super.nationalId,
    super.role,
    super.isBlocked,
    super.birthday,
    super.createdAt,});

  GetUserProfileDataModel.fromJson(dynamic json) {
    id = json['_id'];
    fullName = json['fullName'];
    email = json['email'];
    mobile = json['mobile'];
    nationalId = json['nationalId'];
    role = json['role'];
    isBlocked = json['isBlocked'];
    birthday = json['birthday'];
    createdAt = json['createdAt'];
  }
  
}