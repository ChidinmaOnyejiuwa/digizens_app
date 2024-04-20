
import 'package:digizens_app/login/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, });


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 50),
            child: Column(
              children: [
                LoginPage(),
                SignupPage()
              ],
            ),
          ),

        ),
      ),
    );
  }
}