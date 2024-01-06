import 'package:flutter/material.dart';
import 'package:loginapp/user.dart';

class Home extends StatelessWidget {
  final User user;

  const Home({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(
            //   'Welcome, ${user.email}!', // Display the user's email
            //   style: const TextStyle(fontSize: 18),
            // ),
            // const SizedBox(height: 20),
            // You can add more widgets to display other user details or content
         
          ],
        ),
      ),
    );
  }
}

