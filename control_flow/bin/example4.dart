void main(List<String> args) {
  const names = ['John', 'Paul', 'George', 'Ringe'];

  var counter = 0;
  while(counter < names.length) {
    print(names[counter++]);
  }
  print('-----');
  counter = -1;
  while (++counter < names.length) {
    print(names[counter]);
  }
  print('-----');
  counter = names.length;
  while (--counter >=0) {
    print(names[counter]);
  }
  print('-----');

  counter = 0;
  do {
    print(names[counter++]);
    if (counter == 2) break;
  } while (counter < names.length);
  print('-----');

}