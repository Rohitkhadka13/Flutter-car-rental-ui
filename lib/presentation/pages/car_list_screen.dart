import 'package:car_rental/data/models/car.dart';
import 'package:car_rental/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});
  final List<Car> cars = [
    Car(model: "fortuner", distance: 870, pricePerHour: 45, fuelCapacity: 50),
    Car(model: "fortuner", distance: 870, pricePerHour: 45, fuelCapacity: 50),
    Car(model: "fortuner", distance: 870, pricePerHour: 45, fuelCapacity: 50),
    Car(model: "fortuner", distance: 870, pricePerHour: 45, fuelCapacity: 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Your Car "),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
