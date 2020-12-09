import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasbeeh_app/counter_list.dart';
import 'package:tasbeeh_app/settings.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MyHomePage()),
        GetPage(
            name: '/counterList',
            page: () => CounterList(),
            transition: Transition.cupertino),
        GetPage(
            name: '/settings',
            page: () => Settings(),
            transition: Transition.cupertino),
      ],
      title: 'Tasbeeh App',
      theme: ThemeData(
        buttonBarTheme: ButtonBarThemeData(
            // alignment: MainAxisAlignment.spaceEvenly,

            ),
        // primarySwatch: Colors.black12,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(),
    );
  }
}
