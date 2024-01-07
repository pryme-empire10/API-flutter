import 'package:intl/intl.dart';
import 'package:learningapiflutter/model/user_location.dart';
import 'package:learningapiflutter/model/user_name.dart';

import 'dob.dart';
import 'image.dart';

final format = DateFormat.yMMMEd();

class UserModel {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserLocation location;
  final UserImage image;
  final DOB dob;

  UserModel({
    required this.phone,
    required this.cell,
    required this.email,
    required this.gender,
    required this.nat,
    required this.name,
    required this.location,
    required this.image,
    required this.dob,
  });

  factory UserModel.fromMap(Map<String, dynamic> json) {
    final name = UserName.fromMap(json['name']);
    final location = UserLocation.fromMap(json['location']);
    final userImage = UserImage.fromMap(json['picture']);
    final dob = DOB.fromMap(json['dob']);

    return UserModel(
      phone: json['phone'],
      cell: json['cell'],
      email: json['email'],
      gender: json['gender'],
      nat: json['nat'],
      name: name,
      location: location,
      image: userImage,
      dob: dob,
    );
  }

  String get fullName {
    return "${name.title} ${name.first} ${name.last}";
  }
}
