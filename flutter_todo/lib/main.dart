import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.amberAccent,
        accentColor: Colors.orange),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List todos = List();
  String input = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todos.add("Item 1");
    todos.add("Item 3");
    todos.add("Item 2");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Add Todo List"),
                  content: TextField(
                    onChanged: (String value) {
                      input = value;
                    },
                  ),
                  actions: [
                    FlatButton(
                        onPressed: () {
                          setState(() {
                            todos.add(input);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text("ADD"))
                  ],
                );
              });
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todos[index]),
                onDismissed: (direction) {
                  setState(() {
                    todos.removeAt(index);
                  });
                },
                child: Card(
                  elevation: 4,
                  margin: EdgeInsets.all(9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  child: ListTile(
                    title: Text(todos[index]),
                    trailing: IconButton(
                        icon: Icon(Icons.delete),
                        color: Colors.red,
                        onPressed: () {
                          setState(() {
                            todos.removeAt(index);
                          });
                        }),
                  ),
                ));
          }),
    );
  }
}
