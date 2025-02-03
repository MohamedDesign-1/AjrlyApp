class GetProfileDataEntity {
  GetProfileDataEntity({
      this.status, 
      this.message, 
      this.user,});

  String? status;
  String? message;
  GetUserProfileDataEntity? user;



}

class GetUserProfileDataEntity {
  GetUserProfileDataEntity({
      this.id, 
      this.fullName, 
      this.email, 
      this.mobile, 
      this.nationalId, 
      this.role, 
      this.isBlocked, 
      this.birthday, 
      this.createdAt,});

  String? id;
  String? fullName;
  String? email;
  String? mobile;
  String? nationalId;
  String? role;
  bool? isBlocked;
  String? birthday;
  String? createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['fullName'] = fullName;
    map['email'] = email;
    map['mobile'] = mobile;
    map['nationalId'] = nationalId;
    map['role'] = role;
    map['isBlocked'] = isBlocked;
    map['birthday'] = birthday;
    map['createdAt'] = createdAt;
    return map;
  }

}