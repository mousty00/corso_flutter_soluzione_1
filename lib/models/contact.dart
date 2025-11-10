import "package:flutter/material.dart";

class Contact {
  Contact({required this.value, required this.type});

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

  String get label {
    switch (type) {
      case ContactType.email:
        return "Email: ";
      case ContactType.phone:
        return "Phone: ";
    }
  }
}

enum ContactType { email, phone }
