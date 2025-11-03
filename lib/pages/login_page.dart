import "package:color_changer/widgets/login_form.dart";
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: LoginForm(),
      ),
    );
  }
}
