import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_todolist/app/modules/home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todo List using GetX',
      home: const HomePage(),
    );
  }
}
