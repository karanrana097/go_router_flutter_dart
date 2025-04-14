import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/routes/routes.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      //theme: ThemeData.light(),
      routerConfig: router,
    );
  }
}

