import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

class MyApp extends StatelessWidget {
  MaterialColor colorCustom = MaterialColor(0xff455564, color);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbeeh App',
      theme: ThemeData(
        buttonBarTheme: ButtonBarThemeData(
            // alignment: MainAxisAlignment.spaceEvenly,

            ),
        primarySwatch: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
