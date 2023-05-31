import 'package:ass3flutter/data/data_source.dart';
import 'package:ass3flutter/views/widgets/task_widget.dart';
import 'package:flutter/material.dart';

class InCompleteTasksScreen extends StatelessWidget {
  Function function;
  InCompleteTasksScreen(this.function, {super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:
            DataSource.tasks.where((element) => !element.isComplete).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              DataSource.tasks
                  .where((element) => !element.isComplete)
                  .toList()[index],
              function);
        });
  }
}
