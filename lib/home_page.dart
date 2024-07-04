import 'package:flutter/material.dart';
import 'BMI_page.dart';
import 'profil_page.dart';

class HomePage extends StatelessWidget {
  final String username;
  final String password;

  HomePage({required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, $username!',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Your password is: $password',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BMIPage()),
                );
              },
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage(username: username, password: password)),
                );
              },
              child: Text('Home'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProfilePage(username: username, password: password)),
                );
              },
              child: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
