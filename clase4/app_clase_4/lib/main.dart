import 'package:flutter/material.dart';
import 'package:app_clase_4/presentation/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp.router(
      routerConfig: appRouter,
      ,
    );
  }
}
