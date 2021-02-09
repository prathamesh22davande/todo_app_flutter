
import 'package:flutter/material.dart';
import 'package:todo_app_flutter/screens/add_task_screen.dart';
import 'widgets/task_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50,top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.list,size: 30,color: Colors.lightBlueAccent,),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Todo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    '12 Tasks',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            TaskList(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context)=>AddTaskScren());
          },
        ),
      ),
    );
  }
}
