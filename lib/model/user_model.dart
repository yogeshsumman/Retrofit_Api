import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  final int id;

  @JsonKey(name: 'firstName')
  final String firstname;

  @JsonKey(name: 'lastName')
  final String lastname;

  final String email;
  final String image;

  User({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}






// class User {
//   final int id;
//   final String firstname ;
//   final String lastname ;
//   final String email ;
//   final String image ;


//   User({
//     required this.id,
//     required this.firstname,
//     required this.lastname,
//     required this.email,
//     required this.image,
//   });


// //here we handel the conversions


//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       firstname: json['firstName'],
//       lastname: json['lastName'],
//       email: json['email'],
//       image: json['image'],
//     );
//   }
// }
