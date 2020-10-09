import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked ;
  final Function checkBoxCall;
  final Function deleteCallback;
  TaskTile({this.taskTitle,this.isChecked,this.checkBoxCall,this.deleteCallback});

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
        onLongPress: deleteCallback,
      ),
      elevation: 10,
    );
  }
}

