import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:tasbeeh_app/homepage.dart';
import 'package:tasbeeh_app/rxController/controller.dart';

final controller = Get.put(Controller());
final Controller ctrl = Get.find();

Future<void> showMyDialog(context) async {
  return showDialog(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(
            child: Text(
          'Reset',
          //style: TextStyle(color: Color(0xff56ccd7)
          //),
        )),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Center(
                  child: Text(
                'Do you wants to reset the counter?',
                // style: TextStyle(color: Color(0xff56ccd7))
              )),
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
                    // color: Color(0xff465564),
                    onPressed: () {
                      ctrl.clearArry();

                      // data = null;
                      Navigator.of(context).pop();
                      ctrl.resetCounter();
                    },
                    child: Text('YES',
                        style: TextStyle(
                            fontSize: 12,
                            color: Get.theme.textTheme.bodyText2.color
                            // color: Color(0xff56ccd7)
                            )),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  height: 44,
                  width: 100,
                  child: RaisedButton(
                    // color: Color(0xff465564),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // ctrl.changeResetVal();
                    },
                    child: Text('CANCEL',
                        style: TextStyle(
                            fontSize: 12,
                            color: Get.theme.textTheme.bodyText2.color
                            // color: Color(0xff56ccd7)
                            )),
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
