import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function onAddTaskCallback;

  AddTaskScreen({this.onAddTaskCallback});

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
              onPressed: () => onAddTaskCallback(taskName),
            ),
          ],
        ),
      ),
    );
  }
}
