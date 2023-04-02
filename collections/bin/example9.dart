import 'dart:collection';

void main(List<String> args) {

  //unmodiable Classs

  final foo = Person (
    name: 'Foo', 
    siblings: [
      Person(
        name: 'Bar'
        ,)
    ,]
  );

  foo._siblings?.add(Person(name: 'Baz',),);

  print(foo._siblings);
}

class Person {
  final String name;
  final List<Person>? _siblings;

  UnmodifiableListView<Person>? get siblings =>
    _siblings == null ? null : UnmodifiableListView(_siblings!);

  Person({required this.name, List<Person>? siblings,}) : _siblings = siblings;
}
