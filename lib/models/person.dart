import "package:color_changer/models/contact.dart";

class Person {
  Person({
    required this.firstName,
    required this.lastName,
    this.contacts = const [],
  });

  factory Person.fromJson(
    Map<String, Object?> json,
  ) {
    final contactsJson = json["contacts"] as List<Map<String, Object?>?>?;
    return Person(
      firstName: json["firstName"]! as String,
      lastName: json["lastName"]! as String,
      contacts:
          contactsJson
              ?.map((e) => e!)
              .map(
                (e) => Contact(
                  value: e["value"]! as String,
                  type: e["type"]! as ContactType,
                ),
              )
              .toList() ??
          [],
    );
  }

  String firstName;
  String lastName;
  List<Contact> contacts;
}
