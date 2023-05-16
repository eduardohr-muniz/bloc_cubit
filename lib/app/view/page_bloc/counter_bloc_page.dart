import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/counter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text("Counter ${state.counter}");
              },
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterDecrement());
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterIncrement());
                },
                icon: const Icon(Icons.add),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
