import "package:flutter/material.dart";

class Contact {
  Contact({
    required this.value,
    required this.type,
  });
  String value;
  ContactType type;

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
  phone;

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
