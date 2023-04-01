void main(List<String> args) {
  describe(1);
  describe(1.1);
  describe('Hello');
  describe({'key':'value'});
  describe([1,2,3,4]);  
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an integer');
      break;
    case String:
      print('This is a String');
      break;
    case bool:
      print('This is a boolean');
      break;
    case double:
      print('This is a double');
      break;
    case Map<String, String>:
      print('This is a Map<String, String');
      break;
    default:
      print('This is something else');
      break;
  }
}