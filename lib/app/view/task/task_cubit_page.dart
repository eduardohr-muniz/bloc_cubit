import 'package:bloc_cubit/app/view/task/widgets/cw_check_box_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/task_cubit.dart';

class TaskCubitPage extends StatelessWidget {
  const TaskCubitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("-----Buil page------");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit'),
      ),
      body: BlocConsumer<TaskCubit, TaskState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              const CwCheckBoxCubit(name: "Eduardo"),
              const CwCheckBoxCubit(name: "Ana Laura"),
              const CwCheckBoxCubit(name: "Maitê"),
              Text("${state.number}"),
              TextButton(onPressed: () => context.read<TaskCubit>().incrementNumber(), child: const Text("Incremet"))
            ],
          );
        },
      ),
    );
  }
}
