// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:equatable/equatable.dart';

// class bloc_state extends Equatable {
//   final int counter;
//   bloc_state({this.counter = 0});

//   @override
//   // TODO: implement props
//   List<Object?> get props => [counter];

//   bloc_state copyWith(int ?counter1, {required int counter}) {
//     return bloc_state(counter: counter1??this.counter);
//   }
// }

import 'package:equatable/equatable.dart';

class BlocState extends Equatable {
  final int counter;

  BlocState({this.counter = 0});

  @override
  List<Object?> get props => [counter];

  BlocState copyWith({int? counter}) {
    return BlocState(counter: counter ?? this.counter);
  }
}
