import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
abstract class Bloc_event extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Increment_counter extends Bloc_event {}

class Decrement_counter extends Bloc_event {}
