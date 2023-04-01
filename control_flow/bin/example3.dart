void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Quz'];
  for (final name in names) {
    print(name);
  }

  print('------');
  for (final name in names) {
    if (!name.startsWith('B'))
      print(name);
  }
  print('------');
  for (final name in names) {
    if (name.startsWith('B')) {
      continue;
    }
    print(name);
  }

  print('------');
  for (final name in names) {
    if (name == 'Bar') {
      break;
    }
    print(name);
  }

  print('------');
  for (final name in names.reversed) {
    print(name);
  }

    print('------');
  for (final value in Iterable.generate(20)) {
    print(value);
  }
}