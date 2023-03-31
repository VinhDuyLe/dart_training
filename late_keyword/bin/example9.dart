void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final hankDoe = Person(name: 'Hank Doe');
  final doeFamily = WrongImplementationOfFamily(members: 
    [johnDoe, 
    hankDoe,
    ],
  );

  print(doeFamily);
  print(doeFamily.membersCount);

  final johnSmith = Person(name: 'John Smith');
  final hankSmith = Person(name: 'Hank Smith');
  final smithFamily = RightImplementationOfFamily(members: 
    [johnSmith, 
    hankSmith,
    ],
  );

  print(smithFamily);
  print(smithFamily.membersCount);


}

class Person {
  final String name;

  Person ({required this.name,});
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    membersCount = getMemberCount(); //should not assigned like this, since it means used when construct class
  }

  int getMemberCount() {
    print('Getting members count');
    return members.length;
  }
}

class RightImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount = getMemberCount();

  RightImplementationOfFamily({required this.members});

  int getMemberCount() {
    print('Getting members count');
    return members.length;
  }
}