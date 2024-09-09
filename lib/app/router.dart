import 'package:fish/screens/authentication/login/login_screen.dart';
import 'package:fish/screens/authentication/sign_up/sign_up_screen.dart';
import 'package:fish/screens/home_screen/home_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static String login = '/';
  static String home = '/home';
  static String signUp = '/sign_up';
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: Routes.signUp,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(path: Routes.home, builder: (context, state) => const HomeScreen()),
  ],
);
