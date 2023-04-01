void main(List<String> args) {
  // doSomethingWith(name: null); invalid
  // doSomethingWith(); invalid
  doSomethingWith(name: 'Vinh');
}

void doSomethingWith({required String name,}) {
  print('Hello, $name');
}