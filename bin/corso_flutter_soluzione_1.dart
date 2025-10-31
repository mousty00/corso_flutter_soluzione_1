
import 'dart:io';

import 'package:collection/collection.dart';

void main() {

  int i = 2;
  int? nullable = 10;

  const pi = 3.14;

  var niceWheater = false;
  niceWheater = true;
  niceWheater = !niceWheater;

  // constant object
  const a = Animal();
  
  // // abstract cannot be instanced
  // final p = Person(
  //   firstName: "pippo", 
  //   middleName: "pluto", 
  //   lastName: ""
  // );
  // final p2 = Person(
  //   firstName: "marco", 
  //   lastName: "rossi"
  // );
  
  // p.firstName = "pluto";
  // print(p);
  // writePerson(p);

  Student student = Student(firstName: "mario", lastName: "VERDI");

  nullable = null;
  // final isOdd = nullable.isOdd;

  final isOdd = nullable?.isOdd;

  var j = 3.0;
  j.ceil(); 
  j.floor();


}

// sealed is like private in java
sealed class Person {
  Person({required this.firstName, this.middleName, required this.lastName});
  String firstName;
  String? middleName;
  String lastName;

  // to string
  @override
  String toString() {
    return [firstName, middleName, lastName]
        // this filter the array with data of type string
        .whereType<String>()
        // this filter the array with data that are not empty
        .where((element) => element.isNotEmpty)
        // this join each element with a space
        .join(" ");
  }
}

class Animal {
  const Animal();
}

class Student extends Person {
  Student({required super.firstName, super.middleName, required super.lastName});
  
}

class Teacher extends Person {
  Teacher({required super.firstName, super.middleName, required super.lastName});
}

bool isStudent(Person s){
  if(s is Student) return true;
  return false;
}

bool isTeacher(Person p) {
  switch(p) {
    case Student():
      return false;
    case Teacher():
      return true;
  }
}

// in dart u can return the value of a switch case too :)
bool canSleep(Person p) {
  return switch(p) {
    Student() => true,
    Teacher() => true,
  };
}

void writePerson(Person p) async{
  final file = File("Person.txt");
  try {
    await file.writeAsString("$p");
  } on PathNotFoundException {
    print("the path doesn't exists!");
  } catch(e) {
    print("error "+ e.toString());
  } finally {
    print("finally!");
  }
  print("we logged the person in the file successfuly!");
}

void writePersonRequired({required Person p}){

}

Map<String, int > g (Iterable<String> strings) {
  for(final s in strings) {
    print(s);
  }
  var value = 2;

  final mapExample = {"key": value};

  // this count for each element in string that is not empty the lenght
  final count = strings
      .map((element)=> element.trim())
      .map((element)=> element.length)
      .where((element) => element > 30)
      .where((element) => element < 120)
      // .reduce((value, element) => value + element);
      .sum;

  
  final output = strings
      .map((element)=> element.trim())
      .map((element)=> element.length)
      .where((element) => element > 30)
      .where((element) => element < 120)
      .join(" ");

  final example = [
    for (final s in strings)
      if (s.trim().length > 30)
        if(s.trim().length < 100)
          s.trim().length
  ];

  // in dart u can use for to return each element in this case i used it to return for each element as key the length as value
  return { for(final element in strings ) element: element.length };
}