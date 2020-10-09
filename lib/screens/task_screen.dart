import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_using_provider/model/task_data.dart';
import 'package:todo_app_using_provider/screens/add_task.dart';
import 'package:todo_app_using_provider/widgets/task_list.dart';


class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTask());
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    child: Icon(
                        Icons.view_list,
                      color: Colors.lightBlueAccent,
                      size: 30,
                    ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                Text('My Tasks',style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700
                ),),
                Text('${Provider.of<TaskData>(context).taskCount} Tasks',style: TextStyle(
                    color: Colors.white, fontSize: 18,
                ),),
              ],
            ),
          ),
          Expanded(
            child: TasksList(),
          )
        ],
      ),
    );
  }
}




