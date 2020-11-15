import 'package:flutter/material.dart';

class Todo {
  // final can be initialized with constructors
  final String title;
  final String description;

  Todo({this.title, this.description});
}

class ListPage extends StatelessWidget {
  final todos = List<Todo>.generate(
      20,
      (index) => Todo(
          title: 'Todo $index',
          description:
              'A description of what needs to be done for Todo $index'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TODO List'),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            todo: todos[index],
                          )));
            },
          ),
        ));
  }
}

class DetailPage extends StatelessWidget {
  final Todo todo;

  DetailPage({this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: Text(todo.description),
      ),
    );
  }
}
