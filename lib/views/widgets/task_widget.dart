import 'package:ass3flutter/models/task.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  Task task;
  Function function;

  TaskWidget(this.task, this.function, {super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: task.isComplete,
      onChanged: (v) {
        task.isComplete = !task.isComplete;

        function();
      },
      title: Text(task.name),
    );
  }
}
