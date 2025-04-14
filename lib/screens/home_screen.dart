import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/screens/sample_page.dart';

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


class MyHomePage extends StatelessWidget {
  final String title;
  final VoidCallback toggleTheme;
  final bool isDarkTheme;

  const MyHomePage({
    super.key,
    required this.title,
    required this.toggleTheme,
    required this.isDarkTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(child: Text('Hello World')),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleTheme,
        tooltip: 'Change Theme',
        child: Icon(isDarkTheme ? Icons.sunny : Icons.nightlight_round),
      ),
    );
  }
}

