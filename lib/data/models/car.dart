class Car {
  final String model;
  final double distance;
  final double pricePerHour;
  final double fuelCapacity;

  Car({
    required this.model,
    required this.distance,
    required this.pricePerHour,
    required this.fuelCapacity,
  });

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      model: map['model'],
      distance: map['distance'],
      pricePerHour: map['pricePerHour'],
      fuelCapacity: map['fuelCapacity'],
    );
  }
}
