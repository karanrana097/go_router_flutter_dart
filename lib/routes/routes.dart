import 'package:go_router/go_router.dart';
import 'package:go_router_example/screens/home_screen.dart';
import 'package:go_router_example/screens/second_screen.dart';
// GoRouter configuration with path parameter
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/second/:username',
      builder: (context, state) {
        final username = state.pathParameters['username']!;
        return SecondScreen(username: username);
      },
    ),
  ],
);