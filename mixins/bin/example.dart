void main(List<String> args) {
  final human = Human();
  final dev = Developer();

  human.walk();
  dev..walk()..code();
}
mixin Breathing {
  void swim() => print('Breathing');
}

mixin Walking {
  void walk() => print('Walking');
}

mixin Coding {
  void code() => print('Hello world!');
}

/// This class now has the `walk()` method
class Human with Walking {}

/// This class now has the `walk()` and `code()` methods
class Developer with Walking, Coding {}