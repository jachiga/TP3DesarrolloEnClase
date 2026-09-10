import 'package:flutter/material.dart';
import 'package:app_clase_4/presentation/widgets/drawer.dart';

class AppShell extends StatelessWidget {
  final Widget child;
  final String currentPath;
  
  const AppShell({super.key, required this.child, required this.currentPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentPath),
      ),
      body: child,
      drawer: DrawerMenu(),
    );
  }
}