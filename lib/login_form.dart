import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;
  bool obscurePassword = true;
  Future<void>? loginFuture;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    passwordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 4,
        children: [
          // greet field
          TextFormField(
            controller: usernameController,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Username",
              hintText: "Enter your username here!",
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "field cannot be empty";
              }
              if (value.length < 8) {
                return "an username must be at least 8 characters long";
              }

              return null;
            },
          ),
          SizedBox(height: 8),
          // name field
          TextFormField(
            controller: passwordController,
            obscureText: obscurePassword,
            obscuringCharacter: "-",
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password here!",
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscurePassword = !obscurePassword;
                  });
                },
                icon: Icon(
                  obscurePassword ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
            textInputAction: TextInputAction.done,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "password cannot be empty";
              }

              return null;
            },
            onFieldSubmitted: (value) {
              _login();
            },
          ),
          SizedBox(height: 32),
          FutureBuilder(
            future: loginFuture,
            builder: (context, snapshot) {
              final isLoading =
                  snapshot.connectionState == ConnectionState.waiting;

              return TextButton.icon(
                onPressed: isLoading ? null : _login,
                icon: isLoading
                    ? SizedBox.square(
                        dimension: 16,
                        child: CircularProgressIndicator(strokeWidth: 1.75),
                      )
                    : Icon(Icons.login),
                label: Text("login"),
              );
            },
          ),
        ],
      ),
    );
  }

  void _login() {
    final validate = formKey.currentState?.validate();
    final isValid = validate ?? false;
    if (isValid) {
      final username = usernameController.text;
      final password = passwordController.text;

      setState(() {
        loginFuture = Future.delayed(Duration(milliseconds: 3500), () {
          // TODO: POST al server con username e password
          print("login effettuato!");
        });
      });
    }
  }
}
