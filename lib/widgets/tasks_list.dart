import 'package:flutter/material.dart';

import 'package:flutter_todo/models/task.dart';
import 'package:flutter_todo/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(
              () => tasks[index].toggleDone(),
            );
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
