import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/tasks_list.dart';
import 'package:todo_flutter/screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsApp.debugAllowBannerOverride = false;
    return ChangeNotifierProvider(
      create: (context) => TasksList(),
      child: MaterialApp(
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.lightBlueAccent,
          accentColor: Colors.lightBlueAccent,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.lightBlueAccent,
          ),
          scaffoldBackgroundColor: Colors.lightBlueAccent,
        ),
        home: TasksScreen(),
      ),
    );
  }
}
