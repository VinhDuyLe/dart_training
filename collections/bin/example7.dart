import 'package:collection/collection.dart';
void main(List<String> args) {
  // We can protedt list or map not allow to modified
  final names = ['John', 'Jane'];
  names.add('Jack');
  try {
    final readOnyList = UnmodifiableListView(names);
    readOnyList.add('Jill');
  } catch (e) {
    print(e);
  }

}