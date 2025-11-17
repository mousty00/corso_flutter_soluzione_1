import "package:color_changer/models/contact.dart";
import "package:json_annotation/json_annotation.dart";

part "person.g.dart";

@JsonSerializable(createToJson: false)
class Person {
  Person({
    required this.firstName,
    required this.lastName,
    this.contacts = const [],
  });

  factory Person.fromJson(Map<String, Object?> json) {
    return _$PersonFromJson(json);
  }

  String firstName;
  String lastName;
  List<Contact> contacts;
}
