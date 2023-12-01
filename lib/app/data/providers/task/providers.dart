import 'dart:convert';
import 'package:get/get.dart';
import 'package:getx_todolist/app/core/utils/keys.dart';
import 'package:getx_todolist/app/data/models/task.dart';
import 'package:getx_todolist/app/data/service/storage/services.dart';

//  WE ARE USING THIS CLASS FOR STORAGE AND READ OUR DATA FROM THE LOCAL STORAGE

class TaskProvider {
  StorageService _storage = Get.find<StorageService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey)..toString())
        .forEach((e) => tasks.add(Task.formJson(e)));
    return tasks;
  }

  void writeTask(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
