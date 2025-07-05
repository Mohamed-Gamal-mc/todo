import 'package:flutter/material.dart';
import 'package:todo/tabs/tasks/task_item.dart';

class TasksTab extends StatelessWidget {
  static const String routName = 'TaskTab';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemBuilder: (_, index) => TaskItem(),
          itemCount: 10,
        ))
      ],
    );
  }
}
