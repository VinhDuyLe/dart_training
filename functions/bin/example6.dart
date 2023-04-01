void main(List<String> args) {
  describe();
  describe(something: null);
  describe(something: 'Hello, Vinh!');
}


//case: parameter have default value but optionals
void describe({String? something = 'hello, world!',}) {
  print(something);
}
