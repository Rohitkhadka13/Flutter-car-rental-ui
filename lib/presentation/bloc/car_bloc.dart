import 'package:bloc/bloc.dart';
import 'package:car_rental/domain/usecases/get_cars.dart';
import 'package:car_rental/presentation/bloc/car_event.dart';
import 'package:car_rental/presentation/bloc/car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final GetCars fetchCars;

  CarBloc({required this.fetchCars}): super(CarLoading()){
    on<LoadCars>((event, emit) async {
      emit(CarLoading());
try {
  final cars = await fetchCars.call();
  emit(CarLoaded(cars));
} catch (e) {
  emit(CarError(e.toString()));
}
    });
  }
}
