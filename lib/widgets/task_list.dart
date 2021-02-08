import 'package:flutter/material.dart';
import 'list_item.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: Column(
            children: [
              ListItem(),
              ListItem(),
              ListItem(),
            ],
          ),
        ),
      ),
    );
  }
}



