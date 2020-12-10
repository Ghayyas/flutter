import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rxController/rxController.dart';
import 'components/alert.dart';

final controller = Get.put(SwitchController());
final SwitchController ctrl = Get.find();
CustomDialogUI alert = new CustomDialogUI();

//var showBorder = [];
var boxAry = [
  {"dColor": Color(0xff313b45), "textColor": Color(0xff56ccd7)},
  {"dColor": Colors.black, "textColor": Colors.yellowAccent},
  {"dColor": Colors.grey, "textColor": Colors.green},
  {"dColor": Colors.lightBlue[800], "textColor": Colors.red},
  {"dColor": Colors.pink[900], "textColor": Colors.red},
  {"dColor": Colors.grey[400], "textColor": Colors.yellowAccent},
  {"dColor": Color(0xff313b45), "textColor": Color(0xff56ccd7)}
];

class Settings extends StatelessWidget {
  // var Maincolor = Color(0xff313b45);
  // var customGray = Color(0xffB0BEC5);

  @override
  Widget build(BuildContext context) {
    // print(showBorder[0]);
    return Scaffold(
        //  backgroundColor: Color(0xff455564),
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
                                //color: Color(0xff56ccd7),
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
                        child: Theme(
                          //Inherit the current Theme and override only the accentColor property
                          data: Theme.of(context)
                              .copyWith(accentColor: Colors.yellow),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 7,
                              itemBuilder: (contex, index) {
                                return rowList(index, context);
                              }),
                        ),
                      )),
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

callAlert(context) async {
  alert.showAlertDialog(context);
}

rowList(index, context) {
  return GetBuilder<SwitchController>(
    init: SwitchController(),
    initState: (_) {},
    builder: (_) {
      return Container(
        padding: EdgeInsets.all(16),
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            print(index);
            if (index == 6) {
              callAlert(context);
              //alert.
            }
            controller.changeBorderLocation(index);
            //showBorder[index] = true;
          },
          child: Container(
            width: 60,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: (_.showBorder[index])
                    ? Border.all(width: 0.5, color: Colors.white)
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
                      color: boxAry[index]['dColor'],
                    ),
                    child: Center(
                        child: Text((index == 6) ? 'MORE' : '23',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'digital',
                                color: boxAry[index]['textColor']))),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

Widget _myListView(BuildContext context) {
  // final controller = Get.put(SwitchController());
  // final SwitchController ctrl = Get.find();
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Vibration', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              activeColor: Get.theme.toggleButtonsTheme.color,
              value: ctrl.vibration.value,
              onChanged: (bool newValue) {
                controller.changeVibration();
              },
            )),
      ),
      ListTile(
        title: Text('Sound', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              activeColor: Get.theme.toggleButtonsTheme.color,
              value: ctrl.sound.value,
              onChanged: (bool newValue) {
                controller.changeSound();
              },
            )),
      ),
      ListTile(
        title: Text('Minus Button', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              activeColor: Get.theme.toggleButtonsTheme.color,
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
              activeColor: Get.theme.toggleButtonsTheme.color,
              value: ctrl.volBtn.value,
              onChanged: (bool newValue) {
                controller.changeVolBtn();
              },
            )),
      ),
      ListTile(
        title: Text('Set Limit', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              activeColor: Get.theme.toggleButtonsTheme.color,
              value: ctrl.setLimit.value,
              onChanged: (bool newValue) {
                controller.changeLimit();
              },
            )),
      ),
      ListTile(
        title: Text('Lap Display', style: TextStyle(color: Colors.white)),
        trailing: Obx(() => Switch(
              activeColor: Get.theme.toggleButtonsTheme.color,
              value: ctrl.lapDisplay.value,
              onChanged: (bool newValue) {
                callAlert(context);
                // controller.changeLapDisplay();
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
