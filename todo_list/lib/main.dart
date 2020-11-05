import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 150,
            decoration: new BoxDecoration(color: Colors.blueAccent),
            padding: EdgeInsets.only(top: 40.0),
            child: Center(
              child: Text(
                "Svelte & Cosmic JS App",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Flexible(
                    flex: 8,
                    fit: FlexFit.tight,
                    child: TextField(
                        decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                      ),
                      hintText: 'Enter Todo',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.all(8.6),
                    )),
                  ),
                  Flexible(
                    flex: 1,
                    child: Material(
                        color: Colors.white,
                        child: Center(
                          child: Ink(
                            height: 37,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFE0E0E0),
                              shape: BeveledRectangleBorder(),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.add_circle),
                              color: Colors.black,
                              iconSize: 25,
                              onPressed: () {},
                            ),
                          ),
                        )),
                  )
                ],
              )),
          Expanded(
              child: ListView.builder(
                  itemCount: entries.length,
                  padding: EdgeInsets.all(12.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.1)), //       <--- BoxDecoration here
                      child: ListTile(
                        title: Text('hello'),
                        //   shape: Border.all(width: 2),
                        leading: GestureDetector(
                          onTap: () {
                            setState(() {
                              _value = !_value;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color:
                                        !_value ? Colors.black : Colors.green)),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: _value
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    )
                                  : Icon(null),
                            ),
                          ),
                        ),
                        trailing: GestureDetector(
                            //padding: EdgeInsets.only(left: 30),
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                CupertinoIcons.trash,
                                color: Colors.red,
                              ),
                            ),
                            onTap: () => {}),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
