void main(List<String> args) {
  // describeFully(); invalid

  describeFully('Foo');
  describeFully('Foo', lastName: 'Le');
}

void describeFully(
  String firstName, {
  String? lastName = 'Bar',}
) {
  print('Hello $firstName $lastName');
}