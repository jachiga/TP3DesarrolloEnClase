import 'package:login_app/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_app/entidades/usuarios.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  _LoginView();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: obscureText,
            controller: _passwordController,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: const Icon(Icons.visibility),
                onPressed: () {
                  obscureText = !obscureText;
                },
              ),
              hintText: 'Password',
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            final usuario = validarUsuario(_usernameController.text, _passwordController.text);
            if (usuario != null) {
              context.pushNamed(HomeScreen.name, extra: usuario);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Usuario o contraseña incorrectos'),
                ),
              );
            }
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}