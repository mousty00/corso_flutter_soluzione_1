import "package:color_changer/models/contact.dart";

class Person {
  Person({
    required this.firstName,
    required this.lastName,
    this.contacts = const [],
  });

  String firstName;
  String lastName;
  List<Contact> contacts;
}
