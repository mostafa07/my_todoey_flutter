import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
              task: taskData.tasks[index],
              onCheckCallback: (isChecked) {
                taskData.updateTask(taskData.tasks[index]);
              },
              onLongPressCallback: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
