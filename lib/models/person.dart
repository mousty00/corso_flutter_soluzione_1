import "package:color_changer/models/contact.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "person.freezed.dart";
part "person.g.dart";

@freezed
@JsonSerializable(createToJson: false)
class Person with _$Person {
  const Person({
    required this.firstName,
    required this.lastName,
    this.contacts = const [],
  });

  factory Person.fromJson(Map<String, Object?> json) {
    return _$PersonFromJson(json);
  }

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final List<Contact> contacts;
}
