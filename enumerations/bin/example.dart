void main(List<String> args) {
  print(Vehicle.car);
}

enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonperkm: 400),
  bus(tires: 6, passengers: 50, carbonperkm: 800),
  bicycle(tires: 2, passengers: 1, carbonperkm: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonperkm,
  });

  final int tires;
  final int passengers;
  final int carbonperkm;

  int get carbonFprint => (carbonperkm / passengers).round();

  @override
  int compareTo(Vehicle other) => carbonFprint - other.carbonFprint;
}