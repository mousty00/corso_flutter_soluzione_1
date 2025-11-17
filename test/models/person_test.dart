import "package:color_changer/models/person.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("Person", () {
    test("person is a dataclass", () {
      const a = Person(firstName: "Luca", lastName: "Venir");
      const c = Person(firstName: "Luca", lastName: "Venir");
      final b = a.copyWith(lastName: "Rossi");

      expect(a, isNot(equals(b)));
      expect(a, equals(c));
    });
  });
}
