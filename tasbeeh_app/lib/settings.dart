import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rxController/rxController.dart';

class Settings extends StatelessWidget {
  var Maincolor = Color(0xff313b45);
  var customGray = Color(0xffB0BEC5);
  final controller = Get.put(SwitchController());
  final SwitchController ctrl = Get.find();
  var showBorder = [];
  @override
  Widget build(BuildContext context) {
    // print(showBorder[0]);
    return Scaffold(
        backgroundColor: Color(0xff455564),
        body: Container(
            padding: EdgeInsets.only(
              top: 50,
            ),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text("Settings",
                            style: TextStyle(
                                fontSize: 15.4,
                                color: Color(0xff56ccd7),
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          height: 100,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 1,
                              itemBuilder: (contex, index) {
                                return Row(
                                  //scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          controller
                                              .changeBorderLocation(index);
                                          //showBorder[index] = true;
                                        },
                                        child: Container(
                                          width: 60,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              // border: (showBorder[index])
                                              //     ? Border.all(
                                              //         width: 0.5,
                                              //         color: Colors.white)
                                              //     : null,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                child: Container(
                                                  //width: 240,
                                                  decoration: new BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Maincolor,
                                                  ),
                                                  child: Center(
                                                      child: Text('23',
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontFamily:
                                                                  'digital',
                                                              color: Color(
                                                                  0xff56ccd7)))),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          controller
                                              .changeBorderLocation(index);
                                        },
                                        child: Container(
                                          width: 60,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: (showBorder[index])
                                                  ? Border.all(
                                                      width: 0.5,
                                                      color: Colors.white)
                                                  : null,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                child: Container(
                                                  //width: 240,
                                                  decoration: new BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.black),
                                                  child: Center(
                                                      child: Text('23',
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontFamily:
                                                                  'digital',
                                                              color: Colors
                                                                  .yellowAccent))),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          controller
                                              .changeBorderLocation(index);
                                        },
                                        child: Container(
                                          width: 60,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: (showBorder[index])
                                                  ? Border.all(
                                                      width: 0.5,
                                                      color: Colors.white)
                                                  : null,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                child: Container(
                                                  //width: 240,
                                                  decoration: new BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.grey,
                                                  ),
                                                  child: Center(
                                                      child: Text('23',
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontFamily:
                                                                  'digital',
                                                              color: Colors
                                                                  .green))),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          controller
                                              .changeBorderLocation(index);
                                        },
                                        child: Container(
                                          width: 60,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: (showBorder[index])
                                                  ? Border.all(
                                                      width: 0.5,
                                                      color: Colors.white)
                                                  : null,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                child: Container(
                                                  //width: 240,
                                                  decoration: new BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.blueAccent,
                                                  ),
                                                  child: Center(
                                                      child: Text('23',
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontFamily:
                                                                  'digital',
                                                              color:
                                                                  Colors.red))),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          controller
                                              .changeBorderLocation(index);
                                        },
                                        child: Container(
                                          width: 60,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: (showBorder[index])
                                                  ? Border.all(
                                                      width: 0.5,
                                                      color: Colors.white)
                                                  : null,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                child: Container(
                                                  //width: 240,
                                                  decoration: new BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.purple,
                                                  ),
                                                  child: Center(
                                                      child: Text('23',
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontFamily:
                                                                  'digital',
                                                              color:
                                                                  Colors.red))),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          controller
                                              .changeBorderLocation(index);
                                        },
                                        child: Container(
                                          width: 60,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: (showBorder[index])
                                                  ? Border.all(
                                                      width: 0.5,
                                                      color: Colors.white)
                                                  : null,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                child: Container(
                                                  //width: 240,
                                                  decoration: new BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: customGray,
                                                  ),
                                                  child: Center(
                                                      child: Text('23',
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontFamily:
                                                                  'digital',
                                                              color: Colors
                                                                  .yellowAccent))),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          controller
                                              .changeBorderLocation(index);
                                        },
                                        child: Container(
                                          width: 60,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: (showBorder[index])
                                                  ? Border.all(
                                                      width: 0.5,
                                                      color: Colors.white)
                                                  : null,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                child: Container(
                                                  //width: 240,
                                                  decoration: new BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Maincolor,
                                                  ),
                                                  child: Center(
                                                      child: Text('MORE',
                                                          style: TextStyle(
                                                              fontSize: 15.0,
                                                              fontFamily:
                                                                  'digital',
                                                              color: Color(
                                                                  0xff56ccd7)))),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: _myListView(context),
                  )
                ],
              ),
            )));
  }
}

Widget _myListView(BuildContext context) {
  final controller = Get.put(SwitchController());
  final SwitchController ctrl = Get.find();
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Vibration', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              value: ctrl.vibration.value,
              onChanged: (bool newValue) {
                controller.changeVibration();
              },
            )),
      ),
      ListTile(
        title: Text('Sound', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              value: ctrl.sound.value,
              onChanged: (bool newValue) {
                controller.changeSound();
              },
            )),
      ),
      ListTile(
        title: Text('Minus Button', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              value: ctrl.minBtn.value,
              onChanged: (bool newValue) {
                controller.changeMinBtn();
              },
            )),
      ),
      ListTile(
        title:
            Text('Volume Button Count', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              value: ctrl.volBtn.value,
              onChanged: (bool newValue) {
                controller.changeVolBtn();
              },
            )),
      ),
      ListTile(
        title: Text('Set Limit', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              value: ctrl.setLimit.value,
              onChanged: (bool newValue) {
                controller.changeLimit();
              },
            )),
      ),
      ListTile(
        title: Text('Lap Display', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              value: ctrl.lapDisplay.value,
              onChanged: (bool newValue) {
                controller.changeLapDisplay();
              },
            )),
      ),
      ListTile(
        title: Text('Lap Limit', style: TextStyle(color: Colors.white)),
        trailing: Container(
          padding: EdgeInsets.only(bottom: 2),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.white,
            width: 1.0, // Underline thickness
          ))),
          child: Text('33', style: TextStyle(color: Colors.white)),
        ),
        // Obx(() => Switch(
        //       value: ctrl.vibration.value,
        //       onChanged: (bool newValue) {
        //         controller.changeVibration();
        //       },
        //     )),
      ),
    ],
  );
}
