// import 'dart:async';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:tasbeeh_app/models/counterInterface.dart';
import 'package:tasbeeh_app/rxController/controller.dart';

final controller = Get.put(Controller());
final Controller ctrl = Get.find();

class HiveController extends GetxController {
  void openHiveBoxTheme(theme) {
    print(theme);

    var themes = Hive.box('tasbeeh_app_theme');
    themes.put(0, theme);
  }

  void addCounterList(CountList counterList) {
    print(counterList);

    var clist = Hive.box('counterlist');
    clist.add(counterList);
  }

  void loadDatabase() {
    // Hive.box('counterlist').deleteFromDisk();
    // return;
    var checkDb = Hive.box('counterlist').isNotEmpty;
    if (checkDb) {
      ctrl.arry = [];
      var dbBox = Hive.box('counterlist').length;
      for (var i = 0; i < dbBox; i++) {
        print(dbBox);
        var getVal = Hive.box('counterlist').get(i) as CountList;
        // if (getVal == null) return;
        print(getVal?.id);
        var addCount = CountList(
            getVal?.id, getVal?.name, getVal?.count, getVal?.percentage);
        // ctrl.arry.add(addCount);
        ctrl.arry.add(addCount);
      }
    }
    refresh();
  }

  void delDb(index) {
    var filteredCount = Hive.box('counterlist');
    filteredCount.deleteAt(index); //.deleteAt(index,);
  }
}
