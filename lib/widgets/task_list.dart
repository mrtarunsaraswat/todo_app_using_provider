import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_using_provider/model/task_data.dart';
import 'package:todo_app_using_provider/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Consumer<TaskData>(builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final myTask = taskData.task[index];
            return TaskTile(
                taskTitle: myTask.name,
                isChecked: myTask.isDone,
                checkBoxCall: (checkBoxState) {
                  taskData.updateTask(myTask);
            },
            );
          },
          itemCount: taskData.taskCount
        );
      }),
    );
  }
}
