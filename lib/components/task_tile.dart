import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function onCheckCallback;
  final Function onLongPressCallback;

  TaskTile({
    @required this.task,
    @required this.onCheckCallback,
    this.onLongPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: onCheckCallback,
      ),
      onLongPress: onLongPressCallback,
    );
  }
}
