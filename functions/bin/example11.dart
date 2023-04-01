void main(List<String> args) {
  //these are invalid
  // sayGooglebyeTo();
  // sayGooglebyeTo('Foo');
  // sayGooglebyeTo(full, full);
  sayGooglebyeTo('Foo', 'Bar');

}

void sayGooglebyeTo(String person, String anotherPerson) {
  print('Goodbye $person and $anotherPerson');
}