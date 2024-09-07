import 'package:fish/screens/authentication/sign_up/sign_up_screen.dart';
import 'package:fish/screens/home_screen/home_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const SignUpScreen()),
    GoRoute(path: "/home", builder: (context, state) => const HomeScreen()),
  ],
);
