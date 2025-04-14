import 'package:flutter/material.dart';
import 'package:go_router_example/routes/routes.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GoRouter Navigation',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
