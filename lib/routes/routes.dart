import 'package:go_router/go_router.dart';
import 'package:go_router_example/main.dart';
import 'package:go_router_example/screens/dashboard_screen.dart';
import 'package:go_router_example/screens/home_screen.dart';
import 'package:go_router_example/screens/sample_page.dart';
import 'package:go_router_example/screens/second_screen.dart';
import 'package:go_router_example/screens/settings_screen.dart';
import 'package:go_router_example/screens/users.dart';
import 'package:go_router_example/screens/widgets/sidebar_layout.dart';




final router = GoRouter(
  initialLocation: '/dashboard',
  routes: [
    // ShellRoute: Used for sidebar layout screens
    ShellRoute(
      builder: (context, state, child) {
        return SideBarLayout(child: child); // SidebarLayout wraps all screens
      },
      routes: [
        GoRoute(
            path: '/themepage',
          builder: (context, state) => SamplePage(),
        ),
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => DashboardScreen(),
        ),
        GoRoute(
          path: '/',
          builder: (context, state) => HomeScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => SettingsScreen(),
        ),
        GoRoute(
          path: '/second/:username',
          builder: (context, state) {
            final username = state.pathParameters['username']!;
            return SecondScreen(username: username);
          },
        ),
        GoRoute(
          path: '/users',
          builder: (context, state) => UsersScreen(),
        ),
      ],
    ),

    // Non-shell (normal) routes
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => HomeScreen(),
    // ),
    // GoRoute(
    //   path: '/second/:username',
    //   builder: (context, state) {
    //     final username = state.pathParameters['username']!;
    //     return SecondScreen(username: username);
    //   },
    // ),
    // GoRoute(
    //   path: '/users',
    //   builder: (context, state) => UsersScreen(),
    // ),
  ],
);
