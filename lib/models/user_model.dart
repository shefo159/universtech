class UserModel {
  int id;
  String name;
  String email;
  String nationalId;
  String gender;
  String phone;
  int creditPoint;
  String semster;
  String admin;
  String department;
  int departmentId;
  String level;
  int levelId;

  UserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.nationalId,
      required this.admin,
      required this.gender,
      required this.creditPoint,
      required this.phone,
      required this.semster,
      required this.department,
      required this.departmentId,
      required this.level,
      required this.levelId});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['data']['id'],
      name: json['data']['name'],
      email: json['data']['email'],
      nationalId: json['data']['national_id'],
      admin: json['data']['admin'],
      creditPoint: json['data']['credit_points'],
      department: json['data']['department']['name'],
      departmentId: json['data']['department']['id'],
      gender: json['data']['gender'],
      phone: json['data']['phone'],
      semster: json['data']['semester'],
      level: json['data']['level']['name'],
      levelId: json['data']['level']['id'],
    );
  }
}
