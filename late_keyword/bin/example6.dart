void main(List<String> args) {
  final person = Person();

  try {
    //avoid doing this since it's against the recommendations. instead use nullable variables
    print(person.fullName);
  } catch (e) {
    print(e);
  }

  person.firstName = 'Foo';
  person.lastName = 'Bar';
  print(person.fullName);

}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';

  //better
  // final String firstName;
  // final String lastName;
  // late String fullName = '$firstName $lastName';

  // Person(this.firstName, this.lastName);
}