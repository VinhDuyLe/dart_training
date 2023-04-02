void main(List<String> args) {
  //iterate and map
  const names = ['John', 'Jane', 'Jack', 'Jill'];
  final upperCaseNames = names.map((name) {
    print('Map got called');
    return name.toUpperCase();
  });

  print(upperCaseNames);
}