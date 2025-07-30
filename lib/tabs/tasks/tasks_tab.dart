import 'package:flutter/material.dart';
import 'package:todo/tabs/tasks/add_task_bottom_sheet.dart';
import 'package:todo/tabs/tasks/task_item.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:todo/models/task_model.dart';

class TasksTab extends StatelessWidget {
  static const String routName = 'TaskTab';
  @override
  Widget build(BuildContext context) {
    List<TaskModel> tasks = List.generate(
        10,
        (index) => (TaskModel(
            title: 'Task # ${index + 1} title',
            discreption: 'Task #${index + 1} discreption ',
            date: DateTime.now())));
    return SafeArea(
      child: Column(
        children: [
          EasyInfiniteDateTimeLine(
            firstDate: DateTime.now().subtract(Duration(days: 30)),
            focusDate: DateTime.now(),
            lastDate: DateTime.now().add(Duration(days: 30)),
            showTimelineHeader: false,
          ),
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.only(top: 30),
            itemBuilder: (_, index) => TaskItem(task: tasks[index]),
            itemCount: tasks.length,
          ))
        ],
      ),
    );
  }
}
