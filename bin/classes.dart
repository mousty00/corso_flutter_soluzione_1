List<String> solution(String s) {
  return [
    for (var i = 0; i < s.length; i += 2)
      if (i + 1 < s.length)
        s[i] + s[i + 1]
      else
        '${s[i]}_'
  ];
}

void main() {
  print(solution('abc')); // ['ab', 'c_']
  print(solution('abcdef'));
  print(solution('')); 
  print(solution('a'));
  print(solution('abcdefg'));
}

// sealed is like private in java. this sealed class is not avaible outside this file.
sealed class Person {
  Person({
    required String firstName,
    String? middleName,
    required String lastName,
  }) : _firstName = firstName,
       _middleName = middleName,
       _lastName = lastName;
  String _firstName;
  String? _middleName;
  String _lastName;

  var maxLenght = 2;

  bool checkStringLength(String value, int maxLenght) {
    return value.length > 2;
  }

  // getters
  String get firstName => _firstName;
  String get middleName => _middleName!;
  String get lastName => _lastName;
  // setters
  set firstName(String v) => checkStringLength(v, maxLenght)
      ? _firstName = v
      : throw Exception("firstName length should be more than $maxLenght");
  set lastName(String v) => _lastName = v;
  set middleName(String v) => _middleName = v;

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

bool isStudent(Person s) {
  if (s is Student) return true;
  return false;
}

bool isTeacher(Person p) {
  switch (p) {
    case Student():
      return false;
    case Teacher():
      return true;
  }
}

class Student extends Person {
  Student({
    required super.firstName,
    super.middleName,
    required super.lastName,
  });
}

class Teacher extends Person {
  Teacher({
    required super.firstName,
    super.middleName,
    required super.lastName,
  });
}
