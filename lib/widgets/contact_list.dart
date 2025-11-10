import "package:color_changer/models/person.dart";
import "package:flutter/material.dart";
import "package:reactive_forms/reactive_forms.dart";

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Person> people = [
    Person(firstName: "Jack", lastName: "Brown", contacts: List.empty()),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 36),
      child: Column(
        spacing: 40,
        children: [
          Text(
            "Contact List",
            style: theme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          ListView(
            children: [
              for (final person in people)
                Card(
                  child: Column(
                    children: [
                      Text(
                        " ${person.firstName} ${person.lastName}",
                        style: theme.textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final FormGroup form = FormGroup({
    "firstName": FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(2),
      ],
    ),
    "lastName": FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(2),
      ],
    ),
    "contacts": FormArray<String>([]),
  });

  FormArray<String> get contacts {
    return form.control("contacts") as FormArray<String>;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ReactiveForm(
        formGroup: form,
        child: Column(
          children: [
            ReactiveTextField<String>(
              formControlName: "firstName",
              textInputAction: TextInputAction.next,
            ),
            ReactiveTextField<String>(
              formControlName: "lastName",
              textInputAction: TextInputAction.next,
            ),
            for (final contact in contacts.controls)
              ReactiveTextField<String>(
                formControl: contact as FormControl<String>,
              ),
          ],
        ),
      ),
    );
  }
}
