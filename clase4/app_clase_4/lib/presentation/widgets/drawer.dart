import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return navigationDrawer(
      children: [
        ListTile(
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
            context.go('/home');
          },
        ),
      ],
    );
  }
}