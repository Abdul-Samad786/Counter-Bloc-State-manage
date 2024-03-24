import 'package:blocc/Bloc/Bloc_event.dart';
import 'package:blocc/Bloc/bloc.dart';
import 'package:blocc/Bloc/bloc_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen_State();
  }
}

class Screen_State extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    print('This build is called here');
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter Screen',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, BlocState>(
              builder: (context, state) => Text(
                state.counter.toString(),
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(Increment_counter());
                    },
                    child: Text('Increment')),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(Decrement_counter());
                },
                child: Text('Decrement'))
          ],
        ));
  }
}
