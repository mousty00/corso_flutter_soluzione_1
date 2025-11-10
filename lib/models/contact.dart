class Contact {
  Contact({required this.value, required this.type});

  String value;
  ContactType type;
}

enum ContactType { email, phone }
