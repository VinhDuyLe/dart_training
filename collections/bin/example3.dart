void main(List<String> args) {
  final person1 = Person(age: 10, name: 'Vinh');
  final person2 = Person(age: 10, name: 'Vinh');

  //without overide hashcode, the hascode will be different, but still different in the setPerson
  print(person1.hashCode);
  print(person2.hashCode);

  //untill overide equality

  final setPerson = {person1, person2};
  print(setPerson);
}

class Person {
  final String name;
  final int age;
  
  Person({required this.name, required this.age});

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(name, age); //if name and age of Person class or Dog class, Hashcode will be same even different class

  @override
  bool operator == (Object other) => identical(this, other) || other is Person && name == other.name && age == other.age;

}