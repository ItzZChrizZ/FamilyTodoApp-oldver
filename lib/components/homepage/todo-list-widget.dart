// ignore_for_file: file_names

import 'package:familytodoapp/components/homepage/todo-widget.dart';
import 'package:familytodoapp/constants.dart';
import 'package:familytodoapp/database/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;
    return todos.isEmpty
        ? Center(
            child: Text(
              "No Todos",
              style: Constants.title,
            ),
          )
        : ListView.separated(
            separatorBuilder: (context, index) => Container(
              height: 8,
            ),
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16.0),
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return TodoWidget(todo: todo);
            },
          );
  }
}
