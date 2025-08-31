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
