import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'counter_list.dart';

Color iconColors = Color(0xff4ed6e1);
final controller = Get.put(Controller());
final Controller ctrl = Get.find();
final saveController = TextEditingController();
var data;

class MyHomePage extends StatelessWidget {
  DateTime backbuttonPressedTime;

//Back button functionality

  Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();
    bool backbutton = backbuttonPressedTime == null ||
        currentTime.difference(backbuttonPressedTime) > Duration(seconds: 2);
    if (backbutton) {
      backbuttonPressedTime = currentTime;
      Fluttertoast.showToast(
          msg: 'Press again to exit the app',
          backgroundColor: Colors.black,
          textColor: Colors.white);
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    //print(ctrl.percent.abs());
    controller.calledPre();

    // CircularProgressIndicator(strokeWidth: 5, value: 0.7);
    Widget bigCircle = new Container(
      width: 253.0,
      height: 250.0,
      decoration: new BoxDecoration(
        color: Color(0xff313b45),
        shape: BoxShape.circle,
      ),
      child: Center(
          child: //Text(ctrl.count.toString()),
              GetBuilder<GetxController>(
        init: controller,
        initState: (_) {},
        builder: (_) {
          return Obx(
            () => Text("${ctrl.count}",
                style: TextStyle(
                    fontFamily: 'digital', fontSize: 100.4, color: iconColors)),
          );
        },
      )),
    );
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Color(0xff455564),
      body: WillPopScope(
        onWillPop: onWillPop,
        child: Container(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: <Widget>[
              GestureDetector(
                child: Row(children: [
                  IconButton(
                      icon: Icon(
                        Icons.refresh,
                        color: iconColors,
                        size: 35.0,
                      ),
                      onPressed: () {
                        _showMyDialog(context);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.add_circle_outline_outlined,
                        color: iconColors,
                        size: 35.0,
                      ),
                      onPressed: () {
                        // Navigator.pop(context, true);
                        if (data != null) {
                          controller.clearArry();
                        } else {
                          _titleDialog(context);
                        }
                      }),

                  IconButton(
                      icon: Icon(
                        Icons.reorder,
                        color: iconColors,
                        size: 35.0,
                      ),
                      onPressed: () async {
                        // Navigator.pop(context, true);

                        data = await Get.to(CounterList());
                        // print(data);
                        controller.calledPre();
                      }),

                  Spacer(), // use Spacer

                  DropdownButton<String>(
                    icon: Icon(Icons.more_vert),
                    iconSize: 35.0,
                    iconEnabledColor: iconColors,
                    elevation: 16,
                    underline: Container(
                      height: 0,
                    ),
                    onChanged: (String newValue) async {
                      switch (newValue) {
                        case ('Settings'):
                          await Get.toNamed("/settings"); //Get.to(Settings());

                          break;
                        case ('Counter list'):
                          print(newValue);
                          await Get.toNamed(
                              "/counterList"); //Get.to(CounterList());

                          break;
                      }
                    },
                    items: <String>[
                      'Settings',
                      'Counter list',
                      'Get Pro',
                      'Rate Us',
                      'Privacy policy'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ]),
              ),
              Container(
                  padding: EdgeInsets.only(top: 200),
                  child: GetBuilder<GetxController>(
                    init: controller,
                    initState: (_) {},
                    builder: (_) {
                      return GestureDetector(
                        onTap: () => {controller.increment()},
                        child: Center(
                          child: Obx(() => CircularPercentIndicator(
                                radius: 260.0,
                                lineWidth: 5.0,
                                percent: ctrl.percent?.abs(),
                                center: bigCircle,
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: iconColors,
                                backgroundColor: Color(0xff313b45),
                              )),
                        ),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(
            child: Text(
          'Reset',
          style: TextStyle(color: Color(0xff56ccd7)),
        )),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Center(
                  child: Text('Do you wants to reset the counter?',
                      style: TextStyle(color: Color(0xff56ccd7)))),
            ],
          ),
        ),
        actions: <Widget>[
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 30), //.all(10),
                child: SizedBox(
                  height: 44,
                  width: 100,
                  child: RaisedButton(
                    color: Color(0xff465564),
                    onPressed: () {
                      controller.clearArry();
                      Navigator.of(context).pop();
                    },
                    child: const Text('YES',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff56ccd7))),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  height: 44,
                  width: 100,
                  child: RaisedButton(
                    color: Color(0xff465564),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('CANCEL',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff56ccd7))),
                  ),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Color(0xff303b46),
      );
    },
  );
}

Future<void> _titleDialog(context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Color(0xff303b46),

          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0)), //this right here
          child: Container(
            height: 150,
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please save current counter',
                  style: TextStyle(color: Color(0xff56ccd7)),
                ),
                TextField(
                  cursorColor: const Color(0xFF1BC0C5),
                  style: TextStyle(color: const Color(0xFF1BC0C5)),
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: const Color(0xFF1BC0C5)),
                      ),
                      hintText: 'Title',
                      hintStyle: TextStyle(color: const Color(0xFF1BC0C5)),
                      focusColor: const Color(0xFF1BC0C5)),
                  controller: saveController,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SizedBox(
                      width: 80.0,
                      height: 45,
                      child: RaisedButton(
                        color: Color(0xff465564),
                        onPressed: () {
                          ctrl.arry.add({
                            "id": DateTime.now().millisecondsSinceEpoch,
                            "name": saveController.text,
                            "count": ctrl.count,
                            "percent": ctrl.percent
                          });
                          Navigator.pop(context, true);
                          controller.clearArry();
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: const Color(0xFF1BC0C5)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });
}

class Controller extends GetxController {
  // var count = 0;
  List<dynamic> arry = [];
  var percent;
  var count;
  var dropValue = 'Settings'.obs;

  void calledPre() {
    if (data != null) {
      //print(data['count']);

      percent = data['percent'];
      count = data['count'];
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

  void increment() {
    count++;
    percent = percent + 0.02;

    if (percent.abs() > 1.0) {
      percent = 0.0.obs;
    }
  }
}
