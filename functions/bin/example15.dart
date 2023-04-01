void main(List<String> args) {
  //pass a function to another function
  
  print(minus());
  print(add(5,4));

  print(performOperation(10, 20, (a, b) => a + b));
  print(performOperation(10, 20, add,));
  print(performOperation(10, 20, minus,));

}

int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) => operation(a,b);

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;