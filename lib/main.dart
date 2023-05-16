import 'package:bloc_cubit/app/view/page_bloc/bloc/counter_bloc.dart';
import 'package:bloc_cubit/app/view/page_bloc/counter_bloc_page.dart';
import 'package:bloc_cubit/app/view/page_cubit/counter_cubit_page.dart';
import 'package:bloc_cubit/app/view/home_page.dart';
import 'package:bloc_cubit/app/view/page_cubit/cubit/counter_cubit.dart';
import 'package:bloc_cubit/app/view/task/cubit/task_cubit.dart';
import 'package:bloc_cubit/app/view/task/task_cubit_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/bloc": (context) => BlocProvider(create: (context) => CounterBloc(), child: const CounterBlocPage()),
        "/cubit": (context) => BlocProvider(create: (context) => CounterCubit(), child: const CounterCubitPage()),
        "/taskCubit": (context) => BlocProvider(create: (context) => TaskCubit(), child: TaskCubitPage()),
      },
    );
  }
}
