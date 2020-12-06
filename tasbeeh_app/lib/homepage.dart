import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';
import 'package:tasbeeh_app/settings.dart';

import 'counter_list.dart';

Color iconColors = Color(0xff4ed6e1);
final controller = Get.put(Controller());
final Controller ctrl = Get.find();
final saveController = TextEditingController();
var data;

class MyHomePage extends StatelessWidget {
  // int numVal = 0;
  // final controller = Get.put(Controller());
  // final Controller ctrl = Get.find();

  // print(ctrl.percent);

  var numVal = 0.obs;
  String dropValue;

  //RxDouble<double> per = 0.0.obs;

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
      body: Container(
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
                    onPressed: () => _showMyDialog(context)),
                IconButton(
                    icon: Icon(
                      Icons.add_circle_outline_outlined,
                      color: iconColors,
                      size: 35.0,
                    ),
                    onPressed: () => {
                          if (data != null)
                            {
                              controller.clearArry(),
                            }
                          else
                            {
                              _titleDialog(context),
                            }
                        }),

                IconButton(
                    icon: Icon(
                      Icons.reorder,
                      color: iconColors,
                      size: 35.0,
                    ),
                    onPressed: () async {
                      data = await Get.to(CounterList());
                      // print(data);
                      controller.calledPre();
                    }),

                Spacer(), // use Spacer
                // IconButton(
                //     icon: Icon(
                //       Icons.more_vert,
                //       color: iconColors,
                //       size: 35.0,
                //     ),
                //     onPressed: () => _menuButton()),
                DropdownButton<String>(
                  icon: Icon(Icons.more_vert),
                  iconSize: 35.0,
                  iconEnabledColor: iconColors,
                  elevation: 16,
                  // style: TextStyle(color: iconColors),
                  underline: Container(
                    height: 0,
                    //color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    dropValue = newValue;
                  },
                  onTap: () {
                    switch (dropValue) {
                      case ('Settings'):
                        //print(dropValue);
                        Get.to(Settings());
                        break;
                      case ('Counter list'):
                        //print(dropValue);
                        Get.to(CounterList());
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
                      onTap: () {},
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
                              // animation: true,
                              //animationDuration: 100,
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
          // padding: EdgeInsets.only(bottom: 2),
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
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,

            //crossAxisAlignment: CrossAxisAlignment.baseline,
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
//              const SizedBox(height: 20),
              //const Spacer(),
              Container(
                padding: EdgeInsets.all(10),

                // padding: EdgeInsets.only(left: 30),
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
              // const SizedBox(height: 20),
            ],
          ),

          // TextButton(
          //   child: Text('Approve'),
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          // ),
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
                          /// print(saveController.text);

                          ctrl.arry.add({
                            "id": DateTime.now().millisecondsSinceEpoch,
                            "name": saveController.text,
                            "count": ctrl.count,
                            "percent": ctrl.percent
                          });
                          Navigator.pop(context, true);
                          controller.clearArry();

                          //print(ctrl.arry);
                          // Timer(Duration(seconds: 2),
                          //     () => controller.clearArray());

                          //ctrl.arry.add()
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
      print(data['count']);

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

    //  print(arry);
  }
}
