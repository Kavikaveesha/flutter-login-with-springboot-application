import 'package:flutter/material.dart';
import 'package:loginapp/card.dart';
import 'package:loginapp/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        home: Advertistment()
      ),
    );
  }
}
