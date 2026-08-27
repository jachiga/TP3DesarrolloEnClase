import 'package:flutter/material.dart';
import 'package:login_app/utilities/usuarios.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  final Usuario userName;
  HomeScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome ${userName.username}'),
      ),
    );
  }
}