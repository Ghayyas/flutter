import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData defaultTheme = ThemeData(
    iconTheme: IconThemeData(color: Color(0xff4ed6e1)),
    primaryColor: Color(0xff313b45),
    textTheme: TextTheme(
        headline6: TextStyle(color: Color(0xff4ed6e1)),
        subtitle1: TextStyle(color: Color(0xff4ed6e1)),
        bodyText1: TextStyle(color: Color(0xff4ed6e1)),
        bodyText2: TextStyle(color: Color(0xff4ed6e1))),
    buttonColor: Color(0xff455564),
    cursorColor: const Color(0xFF1BC0C5),
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: const Color(0xFF1BC0C5)),
        focusColor: const Color(0xFF1BC0C5),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFF1BC0C5)))),

    scaffoldBackgroundColor: Color(0xff455564),
//        visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData darkTheme = ThemeData(
    iconTheme: IconThemeData(color: Colors.yellowAccent),
    primaryColor: Colors.black,
    textTheme: TextTheme(
        headline6: TextStyle(color: Colors.yellowAccent),
        subtitle1: TextStyle(color: Colors.yellowAccent),
        bodyText1: TextStyle(color: Colors.yellowAccent),
        bodyText2: TextStyle(color: Colors.yellowAccent)),
    buttonColor: Colors.black12,
    cursorColor: Colors.yellowAccent,
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.yellowAccent),
        focusColor: Colors.yellowAccent,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.yellowAccent))),
    scaffoldBackgroundColor: Colors.grey[800],
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData customWhite = ThemeData(
    iconTheme: IconThemeData(color: Color(0xff4ed6e1)),
    primaryColor: Color(0xff313b45),
    textTheme: TextTheme(
        headline6: TextStyle(color: Color(0xff4ed6e1)),
        subtitle1: TextStyle(color: Color(0xff4ed6e1)),
        bodyText1: TextStyle(color: Color(0xff4ed6e1)),
        // subhead: TextStyle(color: Color(0xff4ed6e1)),
        bodyText2: TextStyle(color: Color(0xff4ed6e1))),
    buttonColor: Color(0xff455564),
    cursorColor: const Color(0xFF1BC0C5),
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: const Color(0xFF1BC0C5)),
        focusColor: const Color(0xFF1BC0C5),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFF1BC0C5)))),

    //  backgroundColor: Colors.amberAccent,
    scaffoldBackgroundColor: Color(0xff455564),
    buttonBarTheme: ButtonBarThemeData(

        // alignment: MainAxisAlignment.spaceEvenly,

        ),
    // primarySwatch: Colors.black12,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData customBlue = ThemeData(
    iconTheme: IconThemeData(color: Color(0xff4ed6e1)),
    primaryColor: Color(0xff313b45),
    textTheme: TextTheme(
        headline6: TextStyle(color: Color(0xff4ed6e1)),
        subtitle1: TextStyle(color: Color(0xff4ed6e1)),
        bodyText1: TextStyle(color: Color(0xff4ed6e1)),
        // subhead: TextStyle(color: Color(0xff4ed6e1)),
        bodyText2: TextStyle(color: Color(0xff4ed6e1))),
    buttonColor: Color(0xff455564),
    cursorColor: const Color(0xFF1BC0C5),
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: const Color(0xFF1BC0C5)),
        focusColor: const Color(0xFF1BC0C5),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFF1BC0C5)))),

    //  backgroundColor: Colors.amberAccent,
    scaffoldBackgroundColor: Color(0xff455564),
    buttonBarTheme: ButtonBarThemeData(

        // alignment: MainAxisAlignment.spaceEvenly,

        ),
    // primarySwatch: Colors.black12,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData customPink = ThemeData(
    iconTheme: IconThemeData(color: Color(0xff4ed6e1)),
    primaryColor: Color(0xff313b45),
    textTheme: TextTheme(
        headline6: TextStyle(color: Color(0xff4ed6e1)),
        subtitle1: TextStyle(color: Color(0xff4ed6e1)),
        bodyText1: TextStyle(color: Color(0xff4ed6e1)),
        // subhead: TextStyle(color: Color(0xff4ed6e1)),
        bodyText2: TextStyle(color: Color(0xff4ed6e1))),
    buttonColor: Color(0xff455564),
    cursorColor: const Color(0xFF1BC0C5),
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: const Color(0xFF1BC0C5)),
        focusColor: const Color(0xFF1BC0C5),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFF1BC0C5)))),

    //  backgroundColor: Colors.amberAccent,
    scaffoldBackgroundColor: Color(0xff455564),
    buttonBarTheme: ButtonBarThemeData(

        // alignment: MainAxisAlignment.spaceEvenly,

        ),
    // primarySwatch: Colors.black12,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData customGray = ThemeData(
    iconTheme: IconThemeData(color: Color(0xff4ed6e1)),
    primaryColor: Color(0xff313b45),
    textTheme: TextTheme(
        headline6: TextStyle(color: Color(0xff4ed6e1)),
        subtitle1: TextStyle(color: Color(0xff4ed6e1)),
        bodyText1: TextStyle(color: Color(0xff4ed6e1)),
        // subhead: TextStyle(color: Color(0xff4ed6e1)),
        bodyText2: TextStyle(color: Color(0xff4ed6e1))),
    buttonColor: Color(0xff455564),
    cursorColor: const Color(0xFF1BC0C5),
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: const Color(0xFF1BC0C5)),
        focusColor: const Color(0xFF1BC0C5),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: const Color(0xFF1BC0C5)))),

    //  backgroundColor: Colors.amberAccent,
    scaffoldBackgroundColor: Color(0xff455564),
    buttonBarTheme: ButtonBarThemeData(

        // alignment: MainAxisAlignment.spaceEvenly,

        ),
    // primarySwatch: Colors.black12,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
