void main(List<String> args) {
  print(add());
  print(add(1, 2));
  print(add(2));
}

int add([int a =1, int b = 21]) {
  return a + b;
}