import 'package:blocc/Bloc/Bloc_event.dart';
import 'package:blocc/Bloc/bloc.dart';
import 'package:blocc/Ui/Counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home_screen(),
      ),
    );
  }
}
