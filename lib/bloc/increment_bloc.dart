import 'package:flutter_bloc/flutter_bloc.dart';
import 'increment_event.dart';
import 'increment_state.dart';

class IncrementBloc extends Bloc<IncrementEvent, IncrementState> {
  IncrementBloc() : super(const IncrementState(100)) {
    on<IncrementNumber>((event, emit) {
      final currentNumber = state.number;
      final newNumber = currentNumber + event.value;
      emit(IncrementState(newNumber));
    });
  }
}
