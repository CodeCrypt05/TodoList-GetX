import 'package:getx_todolist/app/data/models/task.dart';
import 'package:getx_todolist/app/data/providers/task/providers.dart';

class Taskrepository {
  TaskProvider taskProvider;
  Taskrepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTask(tasks);
}
