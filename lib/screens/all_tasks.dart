import 'package:flutter/material.dart';
import 'package:zc_dodiddone/widgets/task_item.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  // Список задач (замените на реальные данные)
  List<String> tasks = [
    'Купить продукты',
    'Записаться на прием к врачу',
    'Позвонить другу',
    'Сделать уборку',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskItem(
            title: tasks[index], 
            description: "Описание задачи", 
            deadline: DateTime.now(),
          );
        },
      );
   }
}
