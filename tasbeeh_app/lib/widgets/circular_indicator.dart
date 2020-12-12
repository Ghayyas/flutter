import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:tasbeeh_app/homepage.dart';
import 'package:tasbeeh_app/widgets/circle_widget.dart';
import 'package:tasbeeh_app/rxController/controller.dart';

final controller = Get.put(Controller());
final Controller ctrl = Get.find();

circular(context) {
  return Center(
    child: GetBuilder<Controller>(
      init: Controller(),
      // initState: (_) {},
      builder: (_) {
        return CircularPercentIndicator(
            radius: 260.0,
            lineWidth: 5.0,
            percent: _.percent?.abs(), //controller.percent.value,
            center: circleBig(context),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Get.theme.iconTheme.color, //iconColors,
            backgroundColor:
                Get.theme.scaffoldBackgroundColor //Color(0xff313b45),
            );
      },
    ),
  );
}
