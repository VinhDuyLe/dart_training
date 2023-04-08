void main(List<String> args) async {
  await for (final number in getNumbers()) {
    print(number);
  }
}

Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
      await Future.delayed(
      const Duration(seconds: 1),
    );
    yield i;
  }
}