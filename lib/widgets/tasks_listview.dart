import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/tasks_list.dart';

class TasksListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksList>(
      builder: (context, tasksList, child) => ListView.builder(
        padding: EdgeInsets.only(bottom: 56.0),
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: tasksList.tasks[index].title,
              isChecked: tasksList.tasks[index].isDone,
              toggleCallBack: (value) {
                tasksList.updateTask(index);
              },
              removeCallBack: () {
                tasksList.removeTask(index);
              });
        },
        itemCount: tasksList.length,
      ),
    );
  }
}
