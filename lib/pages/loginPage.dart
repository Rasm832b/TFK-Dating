// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:tfk_dating/Fucntions/functions.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Login',
          style: TextStyle(fontSize: 30, color: Colors.yellow),
        ),
      ),
      body: Center(child: SizedBox(width: 200, child: LoginFormAndButton())),
      backgroundColor: Colors.red,
    );
  }
}

class LoginFormAndButton extends StatelessWidget {
  LoginFormAndButton({
    super.key,
  });
  Functions log = Functions();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: 'Brugernavn',
          ),
          onChanged: (value) => log.inputUname = value,
        ),
        SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: 'Kodeord',
          ),
          obscureText: true,
          onChanged: (value) => log.inputPname = value,
        ),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            log.signIn(log.inputUname, log.inputPname, context);
            if (log.isLoggedIn == true) {
              Navigator.pushNamed(context, '/secondPage');
            }
          },
          child: const Text('Log in'),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/secondPage');
            },
            child: const Text('Auto')),
        Spacer()
      ],
    );
  }
}
