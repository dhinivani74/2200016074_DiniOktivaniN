import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final String password;

  ProfilePage({required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Username: $username',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Password: $password',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
