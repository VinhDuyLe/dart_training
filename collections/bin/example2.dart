import 'package:collection/collection.dart';
void main(List<String> args) {
  final names = {'Foo', 'Bar', 'Baz', 'Quz'}; //set
  final names2 =['Foo', 'Bar', 'Baz', 'Quz']; //list

  //set dont have duplicate

  //list to set
  final uniqueNames2 = {...names2};
  print(uniqueNames2);

  //hashcode

  final foo1 = 'Foo';
  var foo2 = 'Foo';

  print(foo1.hashCode);
  print(foo2.hashCode);

  //contains in set same as list

  //equality (set is different compared to list)
  final ages1 = {20, 50, 30};
  final ages2 = {20, 30, 50};

  if (ages1 == ages2) print('yes it is equal');
  else print('it is not equal');

  //comparision, it equals even the order/index of element is changed
  
  print('--------');
  if (SetEquality().equals(ages1, ages2)) {
    print('yes it is equal');
  } else {
    print('it is not equal');
  }

}

