// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../cubit/task_cubit.dart';

class CwCheckBoxCubit extends StatelessWidget {
  final String name;
  const CwCheckBoxCubit({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("--------Build Widget------");
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<TaskCubit>().addName(name),
          child: Row(
            children: [
              Icon(context.read<TaskCubit>().containsName(name) ? Icons.check : Icons.remove),
              Text(name),
            ],
          ),
        );
      },
    );
  }
}
