void main(List<String> args) {
  print(fullName(null, null));
  print(fullName(null, 'vinh'));
  print(fullName('Le', null));
  print(fullName('Le', 'vinh'));

}

String fullName (
    String? firstName, 
    String? lastName,
    ) => '${firstName.orDefault} ${lastName.orDefault}';

extension Defaultvalues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return 'x' as T;
      case bool:
        return false as T;
      default:
      throw Exception('No default for T');
    }
  }
}