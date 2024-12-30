// ignore_for_file: constant_identifier_names, prefer_interpolation_to_compose_strings

class User {
  String id;
  String name;
  String email;
  String password;
  UserStatus status = UserStatus.ACTIVE;
  UserRole role = UserRole.TENANT;
  String phoneNumber;
  String address;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.status,
    required this.role,
    required this.phoneNumber,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      status: UserStatus.values
          .firstWhere((e) => e.toString() == 'UserStatus.' + json['status']),
      role: UserRole.values
          .firstWhere((e) => e.toString() == 'UserRole.' + json['role']),
      phoneNumber: json['phoneNumber'],
      address: json['address'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}

enum UserStatus { ACTIVE, INACTIVE, DELETED }

enum UserRole { ADMIN, LANDLORD, TENANT }
