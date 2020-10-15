import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<String> {
  CounterCubit() : super("A");
  int start = "B".codeUnitAt(0);
  int end = "Z".codeUnitAt(0);

  //increment
  void increment() {
    if (start > end) {
      return;
    }
    emit(state + String.fromCharCode(start));
    start++;
  }

// decrement
  void decrement() {
    if (state == "A") {
      return;
    }
    // emit(state + String.fromCharCode(c));
    start--;
    emit(state.substring(0, state.length - 1));
  }
}
