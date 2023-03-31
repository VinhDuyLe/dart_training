void main(List<String> args) {
  print('late fullName is being initialized');
  late final fullName = getFullName(); //not initialize unitl fullName used
  // print('after');
  // print(fullName);

  final resolvedFullName = fullName;
  print('resolvedFullName = $resolvedFullName');
}

String getFullName() {
  print('getFullName() function is called');
  return 'John Doe';
}