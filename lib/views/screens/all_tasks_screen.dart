import 'package:ass3flutter/data/data_source.dart';
import 'package:ass3flutter/views/widgets/task_widget.dart';
import 'package:flutter/material.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  AllTasksScreen(this.fun, {super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DataSource.tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(DataSource.tasks[index], fun);
        });
  }
}
