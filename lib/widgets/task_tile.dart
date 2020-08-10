import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function toggleCallBack;
  final Function removeCallBack;

  const TaskTile({
    this.isChecked,
    this.taskTitle,
    this.toggleCallBack,
    this.removeCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: toggleCallBack,
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
      ),
      onLongPress: removeCallBack,
    );
  }
}
