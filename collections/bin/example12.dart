
void main(List<String> args) {
  //Spread Operator to add to List or Map

  //addToArrayWrong();
  // addToArrayRight();
  // addToDictionaryWrong();
  addToDictionaryRight();
}
//it is a wrong way
void addToArrayWrong() {
  final names1= ['Foo 1', 'bar 1', 'Baz 1'];
  final names2= ['Foo 2', 'bar 2', 'Baz 2'];

  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);

  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1= ['Foo 1', 'bar 1', 'Baz 1'];
  final names2= ['Foo 2', 'bar 2', 'Baz 2'];

  final allNamesRight = [...names1, ...names2];
  allNamesRight.addAll(names2);

  print(names1);
  print(names2);
  print(allNamesRight);


  // final anotherWay = [...names1]..addAll(names2);
  // print(anotherWay);
}

// adding to const will crash
void addToDictionaryWrong() {
  const info = {
    'name' : 'Foo',
    'age' : 20, 
    'height' : 1.8,
  };

  try {
    final result = info;
    result.addAll({'weight' : 80});
  } catch (e) {
    print(e);
  }
}

void addToDictionaryRight() {
  const info = {
    'name' : 'Foo',
    'age' : 20, 
    'height' : 1.8,
  };

  try {
    final result = {...info}..addAll({'weight' : 80});
    print(result);
  } catch (e) {
    print(e);
  }
}