import 'package:flutter/material.dart';
import '../controller/user_controller.dart';
import '../model/user_model.dart';
import '../services/service_api.dart'; // <-- make sure this is imported
import 'package:dio/dio.dart';         // <-- import Dio

class HomePage extends StatelessWidget {
  final UserController userController = UserController(
    ServiceApi(Dio()), // <-- pass Dio to ServiceApi
  );// use controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UsersApi')),
      body: FutureBuilder<List<User>>(
        future: userController.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.image),
                ),
                title: Text('${user.firstname} ${user.lastname}'),
                subtitle: Text(user.email),
              );
            },
          );
        },
      ),
    );
  }
}
