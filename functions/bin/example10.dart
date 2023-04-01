void main(List<String> args) {
  describePerson();
  describePerson(age: 20);
  describePerson(name: 'Foo');
  describePerson(age: 30, name: 'Vinh');
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello, $name, you are $age years old');
}