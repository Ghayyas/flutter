import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasbeeh_app/utls/theme.dart';
import './haive.dart';

class SwitchController extends GetxController {
  final controller = Get.put(HiveController());
  final HiveController hiveCtrl = Get.find();

  var vibration = false.obs;
  var sound = false.obs;
  var minBtn = false.obs;
  var volBtn = false.obs;
  var setLimit = false.obs;
  var lapDisplay = false.obs;
  var showBorder = [true, false, false, false, false, false, false];

  changeBorderLocation(index) {
    for (var i = 0; i < showBorder.length; i++) {
      showBorder[i] = false;
    }
    if (index == 6) return;
    showBorder[index] = true;
    Get.changeTheme(AppTheme.themes[index]);
    hiveCtrl.openHiveBoxTheme(index.toString());
    update();
  }

  changeVibration() {
    vibration.value = !vibration.value;
    update();
  }

  changeSound() {
    sound.value = !sound.value;
    update();
  }

  changeMinBtn() {
    minBtn.value = !minBtn.value;
    update();
  }

  changeVolBtn() {
    volBtn.value = !volBtn.value;
    update();
  }

  changeLimit() {
    return setLimit.value = !setLimit.value;
  }

  changeLapDisplay() {
    return lapDisplay.value = !lapDisplay.value;
  }
}
