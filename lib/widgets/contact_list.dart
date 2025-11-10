import "dart:ffi";

import "package:color_changer/models/contact.dart";
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
    Person(
      firstName: "Jack",
      lastName: "Brown",
      contacts: [
        Contact(value: "johnwhite@gmail.com", type: ContactType.email),
        Contact(value: "+00 1234567879", type: ContactType.phone),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 36),
      child: Column(
        spacing: 30,
        children: [
          Text(
            "Contact List",
            style: theme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          ElevatedButton.icon(
            onPressed: openDialog,
            label: const Text("Add New"),
            icon: const Icon(Icons.add),
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.inversePrimary,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                for (final person in people)
                  Card(
                    child: Padding(
                      padding: const EdgeInsetsGeometry.symmetric(
                        vertical: 42,
                        horizontal: 36,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 20,
                        children: [
                          Text(
                            " ${person.firstName} ${person.lastName}",
                            style: theme.textTheme.headlineMedium,
                          ),
                          for (final contact in person.contacts)
                            Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 6,
                                children: [
                                  Text(
                                    contact.label,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: contactPerson,
                                    label: Text(
                                      " ${contact.value}",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    icon: Icon(contact.icon),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> openDialog() async {
    final form = await showDialog<Person>(
      context: context,
      builder: (context) {
        return const ContactForm();
      },
    );

    if (form == null) return;

    final contacts = form.contacts as List<Contact?>;
    final assertedContacts = contacts.map((v) => v!).toList();

    setState(() {
      people.add(
        Person(
          firstName: form.firstName,
          lastName: form.lastName,
          contacts: assertedContacts,
        ),
      );
    });
  }

  void contactPerson() {}
  void checkContactIcon(Contact contact) {}
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
    "email": FormControl<String>(
      validators: [
        Validators.email,
      ],
    ),
    "phone": FormControl<Int>(
      validators: [],
    ),
  });

  FormArray<String> get contacts {
    return form.control("contacts") as FormArray<String>;
  }

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;

    return Dialog(
      constraints: const BoxConstraints(),
      child: Padding(
        padding: const EdgeInsets.all(36),
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReactiveTextField<String>(
                formControlName: "firstName",
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: "First Name",
                  hintText: "enter here your first name",
                  icon: Icon(Icons.person),
                ),
              ),
              ReactiveTextField<String>(
                formControlName: "lastName",
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: "Last Name",
                  hintText: "enter here your last name",
                  icon: Icon(Icons.person),
                ),
              ),
              ReactiveTextField<String>(
                formControlName: "email",
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "enter here your email",
                  icon: Icon(Icons.mail),
                ),
              ),
              ReactiveTextField<String>(
                formControlName: "phone",
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  hintText: "enter here your phone number",
                  icon: Icon(Icons.phone),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void save() {
    if (!form.valid) return;

    Navigator.of(context).pop(form.value);
  }
}
