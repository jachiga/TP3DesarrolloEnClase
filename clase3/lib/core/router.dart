import 'package:login_app/screens/homeScreen.dart';
import 'package:login_app/screens/loginScreen.dart';
import 'package:login_app/screens/detalleBandaScreen.dart';
import 'package:go_router/go_router.dart';
import 'package:login_app/entidades/usuarios.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: '/home',
    builder: (context, state) => HomeScreen(userName: state.extra as Usuario),
  ),
  GoRoute(
    name: DetalleBandaScreen.name,
    path: '/detalleBanda/:id',
    builder: (context, state) => DetalleBandaScreen(bandaId: int.parse(state.pathParameters['id']!)),
  )
]);