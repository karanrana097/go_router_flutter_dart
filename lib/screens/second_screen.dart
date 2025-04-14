import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {
  final String username;

  const SecondScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Text(
          'Hello, $username!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}