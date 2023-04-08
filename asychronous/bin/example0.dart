String createOrderMessage()  {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

void main(List<String> args) {
  print(createOrderMessage());
  print('Fetching user order...');
}