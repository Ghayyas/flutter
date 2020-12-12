import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasbeeh_app/rxController/controller.dart';

final controller = Get.put(Controller());
final Controller ctrl = Get.find();

dropDown(BuildContext context) {
  return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Get.theme.scaffoldBackgroundColor,
      ),
      child: DropdownButton<String>(
        icon: Icon(Icons.more_vert),
        iconSize: 35.0,
        iconEnabledColor: Get.theme.iconTheme.color,
        elevation: 16,
        // style: TextStyle(
        //     backgroundColor: Get.theme.scaffoldBackgroundColor),
        underline: Container(
          height: 0,
        ),
        onChanged: (String newValue) async {
          switch (newValue) {
            case ('Settings'):
              await Get.toNamed("/settings"); //Get.to(Settings());

              break;
            case ('Counter list'):
              //print(newValue);
              ctrl.updateDb();
              await Get.toNamed("/counterList"); //Get.to(CounterList());

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
            child: Text(
              value,
            ),
          );
        }).toList(),
      ));
}
