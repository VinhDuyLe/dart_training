void main(List<String> args) {

  //required parameter in function could not have default value
  doSomethingWithAge(age: 30);
  doSomethingWithAge(age: null);
}

void doSomethingWithAge({required int? age}) {
  if (age != null) {
    final in2Years = age + 2;
    print('In 2 years, you age will be, $in2Years years old');
  } else {
    print('you did not tell me your age');
  }
}