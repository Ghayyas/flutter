import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static final themes = [
    defaultTheme0,
    defaultTheme1,
    defaultTheme2,
    defaultTheme3,
    defaultTheme4,
    defaultTheme5,
  ];
  static final ThemeData defaultTheme0 = ThemeData(
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

  static final ThemeData defaultTheme1 = ThemeData(
    iconTheme: IconThemeData(color: Colors.yellowAccent),
    primaryColor: Colors.black,
    accentColor: Colors.yellowAccent,
    // primarySwatch: Colors.yellowAccent[200],
    toggleButtonsTheme: ToggleButtonsThemeData(color: Colors.yellowAccent),
    textTheme: TextTheme(
        headline6: TextStyle(color: Colors.yellowAccent),
        subtitle1: TextStyle(color: Colors.yellowAccent),
        bodyText1: TextStyle(color: Colors.yellowAccent),
        bodyText2: TextStyle(color: Colors.yellowAccent)),
    buttonColor: Colors.grey[800], //Colors.black12,
    cursorColor: Colors.yellowAccent,
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.yellowAccent),
        focusColor: Colors.yellowAccent,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.yellowAccent))),
    scaffoldBackgroundColor: Colors.grey[800],
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData defaultTheme2 = ThemeData(
    iconTheme: IconThemeData(color: Colors.greenAccent),
    primaryColor: Colors.blueGrey[200],
    accentColor: Colors.greenAccent,
    // primarySwatch: Colors.yellowAccent[200],
    toggleButtonsTheme: ToggleButtonsThemeData(color: Colors.greenAccent),
    textTheme: TextTheme(
        headline6: TextStyle(color: Colors.greenAccent),
        subtitle1: TextStyle(color: Colors.greenAccent),
        bodyText1: TextStyle(color: Colors.greenAccent),
        bodyText2: TextStyle(color: Colors.greenAccent)),
    buttonColor: Colors.grey, //Colors.black12,
    cursorColor: Colors.greenAccent,
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.greenAccent),
        focusColor: Colors.greenAccent,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent))),
    scaffoldBackgroundColor: Colors.grey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData defaultTheme3 = ThemeData(
    iconTheme: IconThemeData(color: Colors.red),
    primaryColor: Colors.lightBlue[800],
    accentColor: Colors.red,
    // primarySwatch: Colors.yellowAccent[200],
    toggleButtonsTheme: ToggleButtonsThemeData(color: Colors.red),
    textTheme: TextTheme(
        headline6: TextStyle(color: Colors.red),
        subtitle1: TextStyle(color: Colors.red),
        bodyText1: TextStyle(color: Colors.red),
        bodyText2: TextStyle(color: Colors.red)),
    buttonColor: Colors.blueAccent, //Colors.black12,
    cursorColor: Colors.red,
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.red),
        focusColor: Colors.red,
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))),
    scaffoldBackgroundColor: Colors.blueAccent,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData defaultTheme4 = ThemeData(
    iconTheme: IconThemeData(color: Colors.red),
    primaryColor: Colors.purple[900],
    accentColor: Colors.red,
    // primarySwatch: Colors.yellowAccent[200],
    toggleButtonsTheme: ToggleButtonsThemeData(color: Colors.red),
    textTheme: TextTheme(
        headline6: TextStyle(color: Colors.red),
        subtitle1: TextStyle(color: Colors.red),
        bodyText1: TextStyle(color: Colors.red),
        bodyText2: TextStyle(color: Colors.red)),
    buttonColor: Colors.purple, //Colors.black12,
    cursorColor: Colors.red,
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.red),
        focusColor: Colors.red,
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))),
    scaffoldBackgroundColor: Colors.purple,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData defaultTheme5 = ThemeData(
    iconTheme: IconThemeData(color: Colors.yellowAccent),
    primaryColor: Colors.grey[400],
    accentColor: Colors.yellowAccent,
    // primarySwatch: Colors.yellowAccent[200],
    toggleButtonsTheme: ToggleButtonsThemeData(color: Colors.yellowAccent),
    textTheme: TextTheme(
        headline6: TextStyle(color: Colors.yellowAccent),
        subtitle1: TextStyle(color: Colors.yellowAccent),
        bodyText1: TextStyle(color: Colors.yellowAccent),
        bodyText2: TextStyle(color: Colors.yellowAccent)),
    buttonColor: Color(0xffB0BEC5), //Colors.black12,
    cursorColor: Colors.yellowAccent,
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.yellowAccent),
        focusColor: Colors.yellowAccent,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.yellowAccent))),
    scaffoldBackgroundColor: Color(0xffB0BEC5),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
