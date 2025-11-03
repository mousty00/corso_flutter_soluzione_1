import "package:flutter/material.dart";
import "package:reactive_forms/reactive_forms.dart";

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late final FormGroup form;
  bool obscurePassword = true;
  Future<void>? loginFuture;

  @override
  void initState() {
    super.initState();
    form = FormGroup({
      "username": FormControl<String>(
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      "password": FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(4),
        ],
      ),
    });
  }

  @override
  void dispose() {
    form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: Column(
        spacing: 4,
        children: [
          ReactiveTextField<String>(
            formControlName: "username",
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: "Username",
              hintText: "Enter your username here!",
            ),
          ),
          const SizedBox(height: 8),
          ReactiveTextField<String>(
            formControlName: "password",
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
            onSubmitted: (value) {
              _login();
            },
          ),
          const SizedBox(height: 32),
          FutureBuilder(
            future: loginFuture,
            builder: (context, snapshot) {
              final isLoading = snapshot.connectionState == ConnectionState.waiting;

              return TextButton.icon(
                onPressed: isLoading ? null : _login,
                icon: isLoading
                    ? const SizedBox.square(
                        dimension: 16,
                        child: CircularProgressIndicator(strokeWidth: 1.75),
                      )
                    : const Icon(Icons.login),
                label: const Text("login"),
              );
            },
          ),
        ],
      ),
    );
  }

  void _login() {
    if (form.valid) {
      final value = form.value;

      setState(() {
        loginFuture = Future.delayed(const Duration(milliseconds: 3500), () {
          // TODO: POST al server con username e password
          print("login effettuato!");
          final username = value["username"]! as String;
          final password = value["password"]! as String;
          print("username è: $username");
          print("password è: $password");
        });
      });
    }
  }
}
