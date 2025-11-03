import "package:color_changer/widgets/login_form.dart";
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.inversePrimary,
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: LoginForm(),
      ),
    );
  }
}
