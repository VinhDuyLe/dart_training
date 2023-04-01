void main(List<String> args) {
  //return a function from a function
  final foo = doSomething(10, 20);
  foo();

  print(doSomething(10, 20)());

}

int Function() doSomething(int lhs, int rhs) => () => lhs + rhs;