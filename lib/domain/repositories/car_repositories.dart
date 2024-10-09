import 'package:car_rental/data/models/car.dart';

abstract class CarRepositories {

Future<List<Car>> fetchCars();
}

