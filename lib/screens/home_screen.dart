import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Home Screen with navigation button
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String username = "KaranRana";

    return Scaffold(

      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate with parameter
            context.go('/second/$username');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}
