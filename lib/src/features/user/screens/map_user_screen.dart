import 'package:flutter/material.dart';
import 'package:miapp/src/repository/authentication_repository/authentication_repository.dart';

class MapUserScreen extends StatelessWidget {
  const MapUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("Welcome user"),
              ElevatedButton(onPressed: () {
                AuthenticationRepository.instance.logout();
              }, child: Text("Logout"))
            ],
          ),
        ),
      ),
    );
  }
}