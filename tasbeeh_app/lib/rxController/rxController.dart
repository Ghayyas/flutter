import 'package:get/get.dart';

class SwitchController extends GetxController {
  var vibration = false.obs;
  var sound = false.obs;
  var minBtn = false.obs;
  var volBtn = false.obs;
  var setLimit = false.obs;
  var lapDisplay = false.obs;
  var showBorder = [false, false, false, false, false, false, false];

  changeBorderLocation(index) {
    showBorder.every((element) => false);
    showBorder[index] = true;
    print(showBorder);
  }

  changeVibration() {
    return vibration.value = !vibration.value;
  }

  changeSound() {
    return sound.value = !sound.value;
  }

  changeMinBtn() {
    return minBtn.value = !minBtn.value;
  }

  changeVolBtn() {
    return volBtn.value = !volBtn.value;
  }

  changeLimit() {
    return setLimit.value = !setLimit.value;
  }

  changeLapDisplay() {
    return lapDisplay.value = !lapDisplay.value;
  }
}