import "package:color_changer/widgets/contact_list.dart";
import "package:flutter/material.dart";

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        backgroundColor: theme.colorScheme.inversePrimary,
      ),
      body: const ContactList(),
    );
  }
}
