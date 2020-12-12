import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
// import 'package:tasbeeh_app/homepage.dart';
import 'package:tasbeeh_app/rxController/controller.dart';

final controller = Get.put(Controller());
final Controller ctrl = Get.find();

DateTime backbuttonPressedTime;

Future<bool> onWillPop() async {
  DateTime currentTime = DateTime.now();
  bool backbutton = backbuttonPressedTime == null ||
      currentTime.difference(backbuttonPressedTime) > Duration(seconds: 2);
  if (backbutton) {
    ctrl.updateDb();

    backbuttonPressedTime = currentTime;
    Fluttertoast.showToast(
        msg: 'Press again to exit the app',
        backgroundColor: Colors.black,
        textColor: Colors.white);
    return false;
  }
  return true;
}
