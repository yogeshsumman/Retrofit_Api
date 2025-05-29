// Orchestrate logic between API and UI

import '../model/user_model.dart';
import '../services/service_api.dart';
// import '../model/users_response.dart';

class UserController {
  final ServiceApi _api;

  UserController(this._api);

  Future<List<User>> getUsers() async {
    try {
      final response = await _api.fetchUsers();
      return response.users;
    } catch (e) {
      rethrow;
    }
  }
}
