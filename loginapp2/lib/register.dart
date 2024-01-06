import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:loginapp/user.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formkey = GlobalKey<FormState>();

  User user = User("", "");
  String url = "http://10.0.2.2:8080/loginapp/register";

  Future<void> save() async {
    try {
      var res = await http.post(Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'email': user.email,
            'password': user.password,
          }));

      if (res.body != null) {
        Future.delayed(Duration(milliseconds: 1000));
        Navigator.pop(context);
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Register',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Column(
                    children: [
                      TextFormField(
                        controller: TextEditingController(text: user.email),
                        onChanged: (val) {
                          user.email = val;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email empty';
                          }
                        },
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          labelText: 'Email',
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: TextEditingController(text: user.password),
                        onChanged: (val) {
                          user.password = val;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'password empty';
                          }
                        },
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.fingerprint),
                          hintText: 'Password',
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                elevation: 0,
                                shape: const RoundedRectangleBorder(),
                                foregroundColor: Colors.white,
                                // backgroundColor: Colors.black,
                                side: const BorderSide(color: Colors.black),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20)),
                            onPressed: () {
                              save();
                            },
                            child: Text(
                              'Register',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text('if you already have account'),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Signup'))
                    ],
                  )
                ],
              )),
        ));
  }
}
