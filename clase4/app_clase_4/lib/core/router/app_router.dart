import 'package:go_router/go_router.dart';
import 'package:app_clase_4/presentation/screens/home_screen.dart';
import 'package:app_clase_4/presentation/widgets/app_shell.dart';

final appRouter = GoRouter(
  
  initialLocation: '/home', routes: [
  
  
  ShellRoute(
    builder: (context, state, child) => AppShell(
      currentPath: state.uri.path,
      child: child,
    ),
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  ),

]);