// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  var _emailCon;
  var _passwordCon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 100, right: 16, left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signin(),
            SizedBox(height: 50),
            _emailField(),
            SizedBox(height: 20),
            _password(),
            SizedBox(height: 60),
            _createAccountButton(),
            SizedBox(height: 20),
            _signinText()
          ],
        ),
      ),
    );
  }

  Text _signinText() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Need to register an account? ',
            style: TextStyle(
              color: Color(0xff3B4054),
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: 'Sign up',
            style: TextStyle(
              color: Color(0xff3461FD),
              fontWeight: FontWeight.w500,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("Sign up nav");
              },
          )
        ],
      ),
    );
  }

  ElevatedButton _createAccountButton() {
    return ElevatedButton(
      onPressed: () => print("Account not created"),
      child: Text("Create Account"),
    );
  }

  TextField _password() {
    return TextField(
      controller: _passwordCon,
      decoration: const InputDecoration(
        hintText: 'Password',
      ),
    );
  }

  TextField _emailField() {
    return TextField(
      controller: _emailCon,
      decoration: const InputDecoration(
        hintText: 'Email',
      ),
    );
  }

  Text _signin() {
    return const Text(
      'Sign in',
      style: TextStyle(
        color: Color(0xff2A4ECA),
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );
  }
}
