import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasbeeh_app/counter_list.dart';
import 'package:tasbeeh_app/settings.dart';
import 'package:tasbeeh_app/utls/theme.dart';

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
        theme: AppTheme.customGray
        // ThemeData(
        //   iconTheme: IconThemeData(color: Color(0xff4ed6e1)),
        //   primaryColor: Color(0xff313b45),
        //   textTheme: TextTheme(
        //       headline6: TextStyle(color: Color(0xff4ed6e1)),
        //       subtitle1: TextStyle(color: Color(0xff4ed6e1)),
        //       bodyText1: TextStyle(color: Color(0xff4ed6e1)),
        //       // subhead: TextStyle(color: Color(0xff4ed6e1)),
        //       bodyText2: TextStyle(color: Color(0xff4ed6e1))),
        //   buttonColor: Color(0xff455564),
        //   cursorColor: const Color(0xFF1BC0C5),
        //   inputDecorationTheme: InputDecorationTheme(
        //       hintStyle: TextStyle(color: const Color(0xFF1BC0C5)),
        //       focusColor: const Color(0xFF1BC0C5),
        //       focusedBorder: UnderlineInputBorder(
        //           borderSide: BorderSide(color: const Color(0xFF1BC0C5)))),

        //   //  backgroundColor: Colors.amberAccent,
        //   scaffoldBackgroundColor: Color(0xff455564),
        //   buttonBarTheme: ButtonBarThemeData(

        //       // alignment: MainAxisAlignment.spaceEvenly,

        //       ),
        //   // primarySwatch: Colors.black12,
        //   visualDensity: VisualDensity.adaptivePlatformDensity,
        // ),
        //home: MyHomePage(),
        );
  }
}
