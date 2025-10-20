import 'dart:io';
import 'dart:math' as math;

import 'package:collection/collection.dart';

void main() {
  // nullable variable
  int? i = 2;
  i.clamp(0, 5);
  // type inference
  var j = 3.0;
  j.floor();
  j.ceil();

  var s = "Hello, Dart!";

  s.length;
  s.contains("asd");
  s.replaceAll("e", "xxx");
  final list = s.split('.');
  final dart = s.substring(8, 12);

  final cantReassignMe = math.Random().nextInt(100);
  final cannotBeChanged = math.Random().nextInt(50);

  const pi = 3.14159265;

  var niceWeather = false;
  niceWeather = true;
  niceWeather = !niceWeather;

  final p = Male(
    firstName: "pippo",
    middleName: "pluto",
    lastName: "topolino",
    age: 90,
  );
  p.firstName = "pluto";
  print(p.firstName);

  i = 5;
  i = null;
  final _ = i?.isOdd;

  p.firstName = "Luca";
  p.middleName = null;
  p.lastName = "Venir";

  writePerson(p);
}

sealed class Person {
  Person({required this.firstName, this.middleName, required this.lastName});
  String firstName;
  String? middleName;
  String lastName;

  @override
  String toString() {
    return [firstName, middleName, lastName] //
        .whereType<String>()
        .where((element) => element.isNotEmpty)
        .join(" ");
  }

  int get age;
}

class Male extends Person {
  Male({
    required this.age,
    required super.firstName,
    super.middleName,
    required super.lastName,
  });

  @override
  int age;
}

class Female extends Person {
  Female({required super.firstName, super.middleName, required super.lastName});

  @override
  int get age => 18;
}

void writePerson(Person p) async {
  final file = File("person.txt");
  try {
    await file.writeAsString("$p");
    print("abbiamo scritto $p su file, con successo! 🚬");
    throw Exception("LOL");
  } on PathNotFoundException {
    print("uh-oh, il path non esiste! 🔥");
  } catch (e) {
    print("uh-oh, non so che sta succedendo 🥴");
    print(e);
  } finally {
    print("ok, ora esco 💅🏽");
  }
}

bool isMale(Person p) {
  if (p is Male) return true;
  return false;
}

bool isFemale(Person p) {
  switch (p) {
    case Male():
      return false;
    case Female():
      return true;
  }
}

bool canDoLaundry(Person p) {
  return switch (p) {
    Male() => true,
    Female() => true,
  };
}

bool canCookSteak(Person p) {
  return switch (p) {
    Male() => true,
    _ => true,
  };
}

Map<String, int> g(Iterable<String> strings) {
  for (final s in strings) {
    print(s);
  }

  final count = strings
      .map((element) => element.trim())
      .map((element) => element.length)
      .where((element) => element > 30)
      .where((element) => element < 120)
      // .reduce((value, element) => value + element)
      .sum;

  final output = strings
      .map((element) => element.trim())
      .map((element) => element.length)
      .where((element) => element > 30)
      .where((element) => element < 120)
      .join(" ");

  final example = [
    for (final s in strings)
      if (s.trim().length > 30)
        if (s.trim().length < 120) //
          s.trim().length,
  ];

  return {
    for (final element in strings) //
      element: element.length,
  };
}

class Persona<T> {
  const Persona(this.something);
  final T something;
}
