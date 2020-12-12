import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:tasbeeh_app/components/save_dialog.dart';
import 'package:tasbeeh_app/models/counterInterface.dart';
// import 'package:tasbeeh_app/homepage.dart';

// MyHomePage home = new MyHomePage();
final saveController = TextEditingController();

class Controller extends GetxController {
  // var count = 0;
  List<dynamic> arry = [].obs;
  var percent;
  var count;
  var counterVal = false;
  var dropValue = 'Settings'.obs;

  void calledPre([data]) {
    // print("home ${data[0]?.percentage}");
    if (data != null) {
      // print(data[0].count);

      percent = data[0]?.percentage;
      count = data[0]?.count;
    } else {
      percent = 0.0.obs;
      count = 0.obs;
    }
    update();
  }

  void clearArry() {
    saveController.text = '';
    count = 0.obs;
    percent = 0.0.obs;

    update();
  }

  updateDb([data]) {
    if (data != null) {
      //   var arrkey = data.id;
      //   var index = arry.indexWhere((element) => element.id == arrkey);
      if (data[0] == null) return;
      var filteredCount = Hive.box('counterlist');
      // print('datahhh');
      // print(data);
      filteredCount.putAt(data[1],
          CountList(data[0].id, data[0].name, count.abs(), percent.abs()));
    }
    update();
  }

  void increment() {
    count++;
    percent = percent + 0.0311;
    if (percent.abs() > 1.0) {
      percent = 0.0.obs;
    }
    update();
  }

  void resetCounter() {
    counterVal = true;
    Timer(Duration(seconds: 2), changeResetVal);
    // changeResetVal();
  }

  void changeResetVal() {
    counterVal = false;
  }
}
