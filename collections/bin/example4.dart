void main(List<String> args) {
  final info = {'name': 'Foo', 'age' : 10,};
  print(info);
  print(info['name']);
  print(info['age']);

  print(info.keys);
  print(info.values);

  info.putIfAbsent('height', () => 180); //if change 180 value, cannot update in Map becasue 'height' already present
  //to update height
  info['height'] = 190;
  print(info);

  //loop in the map

  print('------');
  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }

  // Map with int key
  final mapWithIntKey = {
    10 : 30,
    20 : 50,
  };

  print('----');
  print(mapWithIntKey);
}