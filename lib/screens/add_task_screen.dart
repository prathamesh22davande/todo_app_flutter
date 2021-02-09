import 'package:flutter/material.dart';

class AddTaskScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.lightBlueAccent,
                ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            FlatButton(
                child: Text(
                    'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: (){},
                color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
