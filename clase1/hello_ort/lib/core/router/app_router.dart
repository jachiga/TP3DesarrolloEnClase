import 'package:go_router/go_router.dart';
import 'package:hello_ort/presentation/screens/home_screem.dart';
import 'package:hello_ort/presentation/screens/login_screen.dart';

final appROuter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
  ]);
