import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked ;
  final Function checkBoxCall;
  TaskTile({this.taskTitle,this.isChecked,this.checkBoxCall});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(taskTitle,style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null ),),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCall,
        ),
      ),
      elevation: 10,
    );
  }
}

