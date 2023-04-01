void main(List<String> args) {
  //optional postional parameter
  makeUpperCase();
  makeUpperCase(null);
  makeUpperCase('Foo');
  //makeUpperCase('Foo', null);
  makeUpperCase('Foo', 'Le');

}

void makeUpperCase([
  String? name,
  String lastName = 'Bar', 
]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}