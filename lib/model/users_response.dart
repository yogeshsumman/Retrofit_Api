// users_response.dart
import 'package:json_annotation/json_annotation.dart';
import 'user_model.dart';

part 'users_response.g.dart';

@JsonSerializable() // used for converting the data t
class UsersResponse {
  final List<User> users;

  UsersResponse({required this.users});

  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UsersResponseToJson(this);
}
