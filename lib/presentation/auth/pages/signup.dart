// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  var _usernameCon;
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
            _signup(),
            SizedBox(height: 50),
            _userNameField(),
            SizedBox(height: 20),
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
            text: 'Do you have an account? ',
            style: TextStyle(
              color: Color(0xff3B4054),
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: 'Sign in',
            style: TextStyle(
              color: Color(0xff3461FD),
              fontWeight: FontWeight.w500,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("Sign in nav");
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

  TextField _userNameField() {
    return TextField(
      controller: _usernameCon,
      decoration: const InputDecoration(
        hintText: 'Username',
      ),
    );
  }

  Text _signup() {
    return const Text(
      'Sign up',
      style: TextStyle(
        color: Color(0xff2A4ECA),
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );
  }
}
