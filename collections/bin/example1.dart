void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Buz', 'Qux'];
  for (final name in names.reversed) {
    print(name);
  }
  print('-------');

  if(names.contains('Bar')) {
    print('Bar in list');
  }
  print('-------');

  for (final name in names.where((String name) => name.startsWith('B'))) {
    print(name);
  }

  names.where(stringStartWithLetterB);

  print('-------');

  names.sublist(1).forEach(print);
  print('-------');

  names.sublist(1,3).forEach(print);

  //final, can not changed but can modified

  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages);
  print('----');
  
  //  compare 2 list equal if same content in order
  const name1 = ['vinh', 'le'];
  const name2 = ['vinh', 'le'];
  if (name1 == name2) print('name 1 and name2 are equal');
  else print('name1 and name2 are not equal');

  print('----');

  final list1 = ['Foo', 'Bar', 'Buz', 'Qux'].map((str) => str.length);
  print(list1);

  final listPrint = ['Foo', 'Bar', 'Buz', 'Qux'].map((str) => str.toUpperCase()).forEach(print);
  names.map((str) => str.length).forEach(print);

  //using fold 
  print('----');

  final numbers = [1,2,3];
  var sum =0;
  for (final number in numbers) {
    sum += number;
  }
  print (sum);

  print('----');

  final sum2 = numbers.fold(0, (int previousValue, int thisValue,) => previousValue + thisValue);
  print(sum2);

  print('----');

  final totalLength = names.fold(0, (totalLength, str, ) => totalLength + str.length,);
  print(totalLength);
  print('----');

  final newNames = names.fold('', (result, str,) => '$result ${str.toUpperCase()}');
  print(newNames);
  print('----');


}

bool stringStartWithLetterB(String value) => value.startsWith('B');