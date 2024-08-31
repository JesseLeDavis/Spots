import 'package:go_router/go_router.dart';
import 'package:spots/features/authentication/presentation/log_in_sign_up.dart';
import 'package:spots/features/splash.dart';

enum AppRoute {
  home,
  product,
  leaveReview,
  cart,
  checkout,
  orders,
  account,
  logInSignUp,
  splash,
}

GoRouter goRouter() => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: false,
      routes: [
        GoRoute(
          path: '/',
          name: AppRoute.splash.name,
          builder: (context, state) => const SplashScreen(),
          routes: [
            GoRoute(
              path: 'logInSignUp',
              name: AppRoute.logInSignUp.name,
              builder: (context, state) => const LogInSignUpScreen(),
            ),
          ],
        ),
      ],
    );
