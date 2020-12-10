import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskName;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 36.0,
              ),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) => taskName = value,
            ),
            SizedBox(
              height: 16.0,
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(Task(name: taskName));
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
