import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:tasbeeh_app/counter_list.dart';
import 'package:tasbeeh_app/models/counterInterface.dart';
import 'package:tasbeeh_app/rxController/rxController.dart';
import 'package:tasbeeh_app/settings.dart';
import 'package:tasbeeh_app/utls/theme.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'homepage.dart';

import 'package:splashscreen/splashscreen.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('tasbeeh_app_theme');
  Hive.registerAdapter(CountListAdapter());

  await Hive.openBox('counterlist');
  // Hive.box('counterlist').deleteFromDisk();
  runApp(MyApp());
}

class SplashScreenDemo extends StatefulWidget {
  @override
  _SplashScreenDemoState createState() => new _SplashScreenDemoState();
}

class _SplashScreenDemoState extends State<SplashScreenDemo> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new MyHomePage(),
      title: new Text(
        'Tasbeeh App',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
      ),
      // image: new Image.network(
      //     'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Colors.black12,
      loaderColor: Colors.blueAccent,
    );
  }
}

class MyApp extends StatelessWidget {
  final scontroller = Get.put(SwitchController());

  final box = Hive.box('counterlist').isNotEmpty;
  final box2 = Hive.box('tasbeeh_app_theme').isNotEmpty;
  final boxtheme = Hive.box('tasbeeh_app_theme').get(0);
  final boxtheme1 = Hive.box('counterlist').get(0) as CountList;
  // print(boxtheme);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // print(box2);
    if (box2) {
      // print(boxtheme);
      scontroller.changeBorderLocation(int.parse(boxtheme));
    }

    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreenDemo()),
        GetPage(
            name: '/home',
            page: () => MyHomePage(),
            transition: Transition.cupertino),
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
      theme: (box2)
          ? AppTheme.themes[int.parse(boxtheme)]
          : AppTheme.defaultTheme0, //AppTheme.defaultTheme0

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
      // home: SplashScreenDemo(),
    );
  }
}
