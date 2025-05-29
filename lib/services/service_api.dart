//Handle networking/API calls
// import 'package:http/http.dart' as http;
// import 'dart:convert';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../model/users_response.dart';  
// import '../model/users_response.dart';

part 'service_api.g.dart';

@RestApi(baseUrl: "https://dummyjson.com")
abstract class ServiceApi {
  factory ServiceApi(Dio dio, {String baseUrl}) = _ServiceApi;

  @GET('/users')
  Future<UsersResponse> fetchUsers();
}

//the old code 

// class ServiceApi {
//   static Future<List<User>> fetchUsers() async {
//     final response = await http.get(Uri.parse('https://dummyjson.com/users'));

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       final List users = data['users'];
//       return [for(var u in users) User.fromJson(u)];
//     } else {
//       throw Exception('Failed to load users');
//     }
//   }
// }
