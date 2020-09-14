import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 30.0,
            right: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
              FlatButton(
                onPressed: () => {},
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
