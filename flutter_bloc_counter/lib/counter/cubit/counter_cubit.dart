import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  //increment
  void increment() => emit(state + 1);
// decrement
  void decrement() {
    if (state == 0) {
      return;
    }
    emit(state - 1);
  }
}
