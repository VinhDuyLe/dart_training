void main(List<String> args) {
  print('before');
  late String name = provideName();
  print('after');
  print(name);
  
}

String provideName() {
  print('Function is called');
  return 'print to console';
}