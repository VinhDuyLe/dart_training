
void main(List<String> args) {
 int a = int.parse('20');

 // '20'.parseInt()
 int b = '20'.parseInt();

}
extension NumberParsing on String {
  int parseInt() => int.parse(this);
}


// extension MyFancyList<T> on List<T> {
//   int get doubleLength => length * 2;
// }

// extension SumOfIterable<T extends num> on Iterable<T> {
//   T get sum => reduce((a, b) => a + b as T);
// }
