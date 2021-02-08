import 'package:flutter/material.dart';


class ListItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task 1'),
      trailing: Checkbox(value: false, ),
    );
  }
}
