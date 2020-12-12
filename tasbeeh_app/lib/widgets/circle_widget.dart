import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasbeeh_app/rxController/controller.dart';

final controller = Get.put(Controller());
final Controller ctrl = Get.find();

circleBig(context) {
  return new Container(
    width: 253.0,
    height: 250.0,
    decoration: new BoxDecoration(
      color: Theme.of(context).primaryColor, //Get.theme.primaryColor,
      //color: Color(0xff313b45),
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
                fontFamily: 'digital', fontSize: 100.4,
                // color: iconColors
              )),
        );
      },
    )),
  );
}
