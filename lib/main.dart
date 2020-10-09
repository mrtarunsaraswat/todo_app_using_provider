import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_using_provider/model/task_data.dart';
import 'package:todo_app_using_provider/screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> TaskData())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          home: TaskScreen()
      ),
    );
  }
}
