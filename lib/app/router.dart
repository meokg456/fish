import 'package:fish/screens/authentication/login/login_screen.dart';
import 'package:fish/screens/authentication/sign_up/sign_up_screen.dart';
import 'package:fish/screens/create_post/create_post_screen.dart';
import 'package:fish/screens/home_screen/home_screen.dart';
import 'package:fish/screens/splash_screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static String splash = '/splash';
  static String login = '/login';
  static String home = '/';
  static String video = '/video';
  static String signUp = '/sign_up';
  static String createPost = '/create_post';
}

final router = GoRouter(
  initialLocation: Routes.splash,
  routes: [
    GoRoute(
      path: Routes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: Routes.signUp,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(path: Routes.home, builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: Routes.video,
      builder: (context, state) => const HomeScreen(
        initialIndex: 1,
      ),
    ),
    GoRoute(
      path: Routes.createPost,
      builder: (context, state) => const CreatePostScreen(),
    ),
  ],
);
