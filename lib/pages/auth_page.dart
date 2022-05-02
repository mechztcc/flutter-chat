import 'package:chat/components/auth_form.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: SingleChildScrollView(
          child: AuthForm(),
        ),
      ),
    );
  }
}
