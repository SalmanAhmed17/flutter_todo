// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_todo/style.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return const TodoPageView();
  }
}

class TodoPageView extends StatefulWidget {
  const TodoPageView({super.key});

  @override
  State<TodoPageView> createState() => _TodoPageViewState();
}

class _TodoPageViewState extends State<TodoPageView> {
  List ToDoList = [
    {"": ""}
  ];
  String item = "";

  InputOnChange(value) {
    setState(() {
      item = value;
    });
  }

  AddItem() {
    ToDoList.add({"item": item});
  }

  RemoveItem(index) {
    setState(() {
      ToDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 70,
                  child: TextFormField(
                    onChanged: (value) => InputOnChange(value),
                    decoration: AppInput("List Item"),
                  ),
                ),
                Expanded(
                  flex: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: ElevatedButton(
                      style: AppButton(),
                      onPressed: () {
                        AddItem();
                      },
                      child: const Text("Add"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 90,
            child: ListView.builder(
              itemCount: ToDoList.length,
              itemBuilder: ((context, index) => Card(
                    child: SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 80,
                            child: Text(ToDoList[index]["item"].toString()),
                          ),
                          Expanded(
                            flex: 20,
                            child: TextButton(
                              onPressed: () {
                                RemoveItem(ToDoList[index]);
                              },
                              style: AppButton(),
                              child: const Icon(Icons.delete),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
