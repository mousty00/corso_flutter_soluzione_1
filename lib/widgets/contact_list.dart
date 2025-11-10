import "package:color_changer/models/contact.dart";
import "package:color_changer/models/person.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:url_launcher/url_launcher.dart" as url_launcher;

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
                          Wrap(
                            spacing: 16,
                            runSpacing: 16,
                            alignment: WrapAlignment.center,
                            children: [
                              for (final contact in person.contacts)
                                ElevatedButton.icon(
                                  onPressed: () {
                                    contactPerson(contact);
                                  },
                                  label: Text(
                                    " ${contact.value}",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  icon: Icon(contact.icon),
                                ),
                            ],
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
    final result = await showDialog<Map<String, Object?>>(
      context: context,
      builder: (context) {
        return const PersonForm();
      },
    );

    if (result == null) return;

    setState(() {
      people.add(Person.fromJson(result));
    });
  }

  Future<void> contactPerson(Contact contact) async {
    final uri = switch (contact.type) {
      ContactType.email => Uri.parse("mailto:${contact.value}"),
      ContactType.phone => Uri.parse("tel:${contact.value}"),
    };

    final canLaunch = await url_launcher.canLaunchUrl(uri);
    if (!canLaunch) return;
    await url_launcher.launchUrl(uri);
  }
}

class PersonForm extends StatefulWidget {
  const PersonForm({super.key});

  @override
  State<PersonForm> createState() => _PersonFormState();
}

class _PersonFormState extends State<PersonForm> {
  late final FormGroup form;

  @override
  void initState() {
    super.initState();
    form = fb.group({
      "firstName": [
        "",
        Validators.required,
        Validators.minLength(2),
      ],
      "lastName": [
        "",
        Validators.required,
        Validators.minLength(2),
      ],
      "contacts": fb.array<Map<String, dynamic>>(
        [
          fb.group(
            {
              "type": [
                ContactType.email,
                Validators.required,
                Validators.oneOf(ContactType.values),
              ],
              "value": [
                "",
                Validators.required,
                Validators.delegate(emailOrPhoneValidation),
              ],
            },
          ),
        ],
        [Validators.minLength(1)],
      ),
    });
  }

  @override
  void dispose() {
    form.dispose();
    super.dispose();
  }

  String get firstName {
    return form.control("firstName").value! as String;
  }

  String get lastName {
    return form.control("lastName").value! as String;
  }

  List<FormGroup> get contacts {
    final array = form.control("contacts") as FormArray<Map<String, dynamic>>;
    return array.controls.map((e) => e as FormGroup).toList();
  }

  @override
  Widget build(BuildContext context) {
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
              const SizedBox(height: 48),
              TextButton.icon(
                onPressed: addContact,
                icon: const Icon(Icons.add),
                label: ReactiveFormConsumer(
                  builder: (context, _, _) {
                    return Text("Aggiungi un contatto per $firstName $lastName");
                  },
                ),
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  for (final c in contacts)
                    Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          flex: 2,
                          child: ReactiveDropdownField(
                            formControl: c.control("type") as FormControl,
                            items: [
                              for (final value in ContactType.values)
                                DropdownMenuItem(
                                  value: value,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    spacing: 8,
                                    children: [
                                      Icon(value.icon),
                                      Text(value.displayLabel),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: ReactiveFormConsumer(
                            builder: (context, formGroup, _) {
                              final type = c.control("type").value as ContactType;

                              return ReactiveTextField(
                                formControl: c.control("value") as FormControl,
                                decoration: InputDecoration(
                                  labelText: type.labelText,
                                  hintText: type.hintText,
                                ),
                              );
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            removeContact(c);
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                ],
              ),
              const SizedBox(height: 80),
              ElevatedButton.icon(
                icon: const Icon(Icons.save),
                onPressed: save,
                label: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addContact() {
    final array = form.control("contacts") as FormArray<Map<String, dynamic>>;
    setState(() {
      array.add(
        fb.group(
          {
            "type": [
              ContactType.email,
              Validators.required,
              Validators.oneOf(ContactType.values),
            ],
            "value": [
              "",
              Validators.required,
              Validators.delegate(emailOrPhoneValidation),
            ],
          },
        ),
      );
    });
  }

  void removeContact(FormGroup c) {
    final array = form.control("contacts") as FormArray<Map<String, dynamic>>;
    setState(() {
      array.remove(c);
    });
  }

  void save() {
    if (!form.valid) return;
    final value = form.value;
    context.pop(value);
  }

  static Map<String, dynamic>? emailOrPhoneValidation(AbstractControl<dynamic> control) {
    final parent = control.parent?.value;
    final type = switch (parent) {
      {"type": final ContactType type} => type,
      _ => null,
    };
    final value = control.value;

    switch ((type, value)) {
      case (ContactType.email, final String value)
          when !EmailValidator.emailRegex.hasMatch(value):
        return {"emailOrPhone": "must provide a valid email"};
      case (ContactType.phone, final String value)
          when !value.startsWith("+") ||
              !RegExp(r"^[+ \d]*$").hasMatch(value) ||
              value.length < 4:
        return {"emailOrPhone": "must provide a valid phone"};
      case _:
        return null;
    }
  }
}
