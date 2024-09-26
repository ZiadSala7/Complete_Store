import 'package:complete_store/features/auth/screens/login_screen.dart';
import 'package:complete_store/features/auth/screens/register_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String registerScreen = '/registerScreen';

  static final appRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRouter.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
    ],
  );
}
