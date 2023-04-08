void main(List<String> args) async {
  print(getName());
  print(getYourName()); //instance of 'Future<String'
  print(await getYourName());
  print(await getAddress());
  print(await getPhoneNumber()); //Future.delayed
  
  print('-----');
  // print(createOrderMessage());

  fetchUserOrder();
  print('Fetching user order...');


}
String getName() => 'Vinh';
Future<String> getYourName() async =>'Vinh';
Future<String> getAddress() => Future.value('123 address');
Future<String> getPhoneNumber() => Future.delayed(
      const Duration(seconds: 2),
      () => '111-111-1111',
    );



// String createOrderMessage() {
//   var order = fetchUserOrder();
//   return 'Your order is: $order';
// }

// Future<String> fetchUserOrder() =>
//     // Imagine that this function is more complex and slow.
//     Future.delayed(
//       const Duration(seconds: 2),
//       () => 'Large Latte',
//     );

  Future<void> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}
