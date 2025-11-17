import "package:flutter/material.dart";
import "package:json_annotation/json_annotation.dart";

part "contact.g.dart";

@JsonSerializable(createToJson: false)
class Contact {
  Contact({
    required this.value,
    required this.type,
  });

  factory Contact.fromJson(Map<String, Object?> json) {
    return _$ContactFromJson(json);
  }

  String value;
  ContactType type;
}

extension ContactViewModel on Contact {
  IconData get icon {
    switch (type) {
      case ContactType.email:
        return Icons.email;
      case ContactType.phone:
        return Icons.phone;
    }
  }
}

enum ContactType {
  email,
  phone
  ;

  IconData get icon {
    return switch (this) {
      email => Icons.contact_mail,
      phone => Icons.contact_phone,
    };
  }

  String get displayLabel {
    return switch (this) {
      email => "Email",
      phone => "Phone",
    };
  }

  String get labelText {
    return switch (this) {
      email => "Email",
      phone => "Phone Number",
    };
  }

  String get hintText {
    return switch (this) {
      email => "enter here your email",
      phone => "enter here your phone number",
    };
  }
}
