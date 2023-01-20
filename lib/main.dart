import 'package:flutter/material.dart';
import 'package:flutter_todo/todopage.dart';

main() {
  runApp(const Sal());
}

class Sal extends StatelessWidget {
  const Sal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Todo",
      home: TodoPage(),
    );
  }
}
