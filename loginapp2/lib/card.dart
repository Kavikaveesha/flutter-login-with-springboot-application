import 'package:flutter/material.dart';
import 'package:loginapp/adcontainer.dart';

class Advertistment extends StatelessWidget {
  const Advertistment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return const AdContainer();
            },
          ),
        )
      ],
    ));
  }
}
