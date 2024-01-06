import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:loginapp/home.dart';
import 'package:loginapp/register.dart';
import 'package:loginapp/user.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  bool loginError = false;
  User user = User("", "");
  String url = "http://10.0.2.2:8080/loginapp/login";

  Future<void> save() async {
    try {
      var res = await http.post(Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'email': user.email,
            'password': user.password,
          }));

      if (res.statusCode == 200) {
        // ignore: use_build_context_synchronously
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home(user: user)));
      } else {
        setState(() {
          loginError = true;
        });
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
                    'Login',
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
                          errorStyle: TextStyle(color: Colors.red),
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
                      Text(loginError ? 'Login error' : ''),
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
                              if (_formkey.currentState!.validate()) {
                                save();
                              }
                            },
                            child: Text(
                              'Login',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text('if you dont have account'),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()));
                          },
                          child: const Text('Register'))
                    ],
                  )
                ],
              )),
        ));
  }
}
