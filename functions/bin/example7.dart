void main(List<String> args) {
  doSomethingWith();
  doSomethingWith(name: 'Vinh');
}

void doSomethingWith({String name = 'Bar',}) {
  print('Hello, $name!');
}