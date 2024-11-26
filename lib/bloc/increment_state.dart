import 'package:equatable/equatable.dart';

class IncrementState extends Equatable {
  final int number;

  const IncrementState(this.number);

  @override
  List<Object> get props => [number];
}
