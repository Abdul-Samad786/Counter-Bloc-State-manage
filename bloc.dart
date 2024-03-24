// // ignore: depend_on_referenced_packages
// import 'package:blocc/Bloc/Bloc_event.dart';
// import 'package:blocc/Bloc/bloc_State.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class Counter_bloc extends Bloc {
//   Counter_bloc() : super(bloc_state()) {
//     on<Increment_counter>(_increment);
//   }
//   void _increment(Increment_counter event, Emitter<bloc_state> emitter) {
//     // ignore: invalid_use_of_visible_for_testing_member
//     emit(state.copyWith(counter: state.counter + 1));
//   }
// }

import 'package:blocc/Bloc/Bloc_event.dart';
import 'package:blocc/Bloc/bloc_State.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<Bloc_event, BlocState> {
  CounterBloc() : super(BlocState()) {
    on<Increment_counter>(_increment);
    on<Decrement_counter>(_decrement);
    // on<decrement_counter>(
    //     _decrement as EventHandler<decrement_counter, BlocState>);
  }

  void _increment(Increment_counter event, Emitter<BlocState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(Decrement_counter event, Emitter<BlocState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
