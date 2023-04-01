void main(List<String> args) {
  greet();

  //you will never invoke the function and assign the result to a variable
  //so dont write like this
  //final void value = greet();
}

void greet() {
  print('Greeting!');
}