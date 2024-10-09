import 'package:car_rental/data/models/car.dart';
import 'package:car_rental/domain/repositories/car_repositories.dart';

class GetCars {
  final CarRepositories repositories;

  GetCars(this.repositories);

  Future<List<Car>> call() async {
    return await repositories.fetchCars();
  }

}