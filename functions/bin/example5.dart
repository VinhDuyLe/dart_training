void main(List<String> args) {
  sayHelloTo('Bob');

  sayHello();
  sayHello(name: 'Le');

  sayHelloToThisPerson();
  sayHelloToThisPerson(name: null);
  sayHelloToThisPerson(name: 'Vinh');
}
//pass value to parameter
void sayHelloTo(String name) {
  print('Hello, $name');
}

//have default value
void sayHello({String name = 'bob'}) {
  print('Hello, $name');
}

//better using optionals
void sayHelloToThisPerson({String? name}) {
  print('Hello, $name');
}
