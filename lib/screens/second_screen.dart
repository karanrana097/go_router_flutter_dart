import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SecondScreen extends StatelessWidget {
  final String username;

  const SecondScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, $username!',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(onPressed: (){context.go('/users');}, child: Text("Click if You are a User"))
          ],
        )
      ),
    );
  }
}