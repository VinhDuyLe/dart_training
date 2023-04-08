import 'dart:collection';

//Demonstrating use of single letter for generics

//Demonstrating single letter
void main() {
  Product milk = Product(1, 5.99, "Milk");
  Product bread = Product(2, 4.50, "Bread");

  //Using single letter names for Generics
  Store<Product, Inventory> store1 = Store<Product, Inventory>();
  store1.updateInventory(milk, Inventory(20));
  store1.updateInventory(bread, Inventory(15));
  store1.printProducts();

  // var names = <String>[];
  // names.addAll(['Seth', 'Kathy','Lars']);
  // print(names);
  // names.add(10);


}

class ClassName<T> {}

//A class for grocery product
class Product {
  final int id;
  final double price;
  final String title;
  Product(this.id, this.price, this.title);

  @override
  String toString() {
    return "Price of $title is \$$price";
  }
}

//A class for product's inventory
class Inventory {
  final int amount;

  Inventory(this.amount);

  @override
  String toString() {
    return "Inventory amount: $amount";
  }
}

//Custom type variables- Single letter
class Store<P, I> {
  final HashMap<P, I> catalog = HashMap<P, I>();

  List<P> get products => catalog.keys.toList();

  void updateInventory(P product, I inventory) {
    catalog[product] = inventory;
  }

  void printProducts() {
    catalog.keys.forEach(
      (product) => print("Product: $product, " + catalog[product].toString()),
    );
  }
}


