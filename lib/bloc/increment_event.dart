import 'package:equatable/equatable.dart';

abstract class IncrementEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class IncrementNumber extends IncrementEvent {
  final int value;

  IncrementNumber(this.value);

  @override
  List<Object> get props => [value];
}
