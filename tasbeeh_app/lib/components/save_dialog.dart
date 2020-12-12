import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasbeeh_app/homepage.dart';
import 'package:tasbeeh_app/models/counterInterface.dart';
import 'package:tasbeeh_app/rxController/controller.dart';
import 'package:tasbeeh_app/rxController/haive.dart';

final HiveController hCtrl = Get.find();

final saveController = TextEditingController();

final controller = Get.put(Controller());
final Controller ctrl = Get.find();

Future<void> titleDialog(context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Get.theme.primaryColor,

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
                  // style: TextStyle(color: Color(0xff56ccd7)),
                ),
                TextField(
                  // cursorColor: const Color(0xFF1BC0C5),
                  //  style: TextStyle(color: const Color(0xFF1BC0C5)),
                  decoration: InputDecoration(
                    // focusedBorder: UnderlineInputBorder(
                    //     //  borderSide: BorderSide(color: const Color(0xFF1BC0C5)),
                    //     ),
                    hintText: 'Title',
                    // hintStyle: TextStyle(color: const Color(0xFF1BC0C5)),
                    //focusColor: const Color(0xFF1BC0C5)
                  ),
                  controller: saveController,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SizedBox(
                      width: 80.0,
                      height: 45,
                      child: RaisedButton(
                        // color: Color(0xff465564),
                        onPressed: () {
                          print("value");
                          print(ctrl.count.abs());
                          var addCount = CountList(
                              DateTime.now().millisecondsSinceEpoch,
                              saveController.text,
                              ctrl.count.abs(),
                              ctrl.percent.abs());
                          // ctrl.arry.add(addCount);
                          // print(addCount);
                          hiveController.addCounterList(addCount);
                          // ctrl.arry.add({
                          //   "id": DateTime.now().millisecondsSinceEpoch,
                          //   "name": saveController.text,
                          //   "count": ctrl.count,
                          //   "percent": ctrl.percent
                          // });
                          Navigator.pop(context, true);
                          controller.clearArry();
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Get.theme.textTheme.bodyText2.color),
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
