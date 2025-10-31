import 'package:flutter/material.dart';

class AdvancedGreeter extends StatefulWidget {
  const AdvancedGreeter({super.key});

  @override
  State<AdvancedGreeter> createState() => _AdvancedGreeterState();
}

class _AdvancedGreeterState extends State<AdvancedGreeter> {
  String? output;
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController greetController;
  late final TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    greetController = TextEditingController();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    greetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 4,
        children: [
          // greet field
          TextFormField(
            controller: greetController,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Greeting",
              hintText: "Enter your greeting here!",
            ),
            validator: (value) {
              if (value == null) {
                return 'Please enter some text';
              }
              if (value.isEmpty) {
                return "Only non empty values are allowed";
              }
              if (value.length < 2) {
                return "At least 2 characters are required";
              }

              return null;
            },
          ),
          SizedBox(height: 8),
          // name field
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: "Name",
              hintText: "Enter your name here!",
            ),
            textInputAction: TextInputAction.done,
            validator: (value) {
              if (value == null) {
                return 'Please enter some text';
              }
              if (value.isEmpty) {
                return "Only non empty values are allowed";
              }
              if (value.length < 3) {
                return "At least 3 characters are required";
              }

              return null;
            },
            onFieldSubmitted: (value) {
              _save();
            },
          ),
          SizedBox(height: 32),
          TextButton.icon(
            onPressed: _save,
            icon: Icon(Icons.save),
            label: Text("saluta!"),
          ),
          SizedBox(height: 64),
          if (output != null)
            Text(output!, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  void _save() {
    // if form è valido
    //   mostra il saluto
    // altrimenti
    //   togli il saluto, mostra errori
    final validate = _formKey.currentState?.validate();
    final isValid = validate ?? false;
    if (isValid) {
      final greet = greetController.text;
      final name = nameController.text;
      setState(() {
        output = "$greet, $name!";
      });
    } else {
      setState(() {
        output = null;
      });
    }
  }
}
