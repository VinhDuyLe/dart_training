
void main(List<String> args) {
  final person = Person();
  person.description = 'Description1';
  print(person.description);
  person.description = 'Description2';
  print(person.description);

  final woft = Dog();
  woft.description = 'descrip1';
  print(woft.description);
  try {
    woft.description = 'descrip2';
    print(woft.description);
  } catch (e) {
      print(e);
  }

}

class Person {
  late String description;
}

class Dog {
  late final String description;
}