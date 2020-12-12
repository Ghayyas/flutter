import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';
import 'package:tasbeeh_app/components/reset_dialog.dart';
import 'package:tasbeeh_app/components/save_dialog.dart';
import 'package:tasbeeh_app/rxController/rxController.dart';
// import 'package:tasbeeh_app/widgets/circle_widget.dart';
import 'package:tasbeeh_app/widgets/circular_indicator.dart';
import 'package:tasbeeh_app/widgets/drop_down.dart';
import 'package:tasbeeh_app/widgets/icons/circle_outlined.dart';
import 'package:tasbeeh_app/widgets/icons/refresh.dart';
import 'package:tasbeeh_app/widgets/icons/reorder.dart';

import 'package:vibrate/vibrate.dart';

import 'counter_list.dart';
// import 'models/counterInterface.dart';
import 'rxController/back_btn.dart';
import 'rxController/controller.dart';
import 'rxController/haive.dart';

import 'package:hardware_buttons/hardware_buttons.dart' as HardwareButtons;

// Color iconColors = Color(0xff4ed6e1);
final controller = Get.put(Controller());
final Controller ctrl = Get.find();
final hiveController = Get.put(HiveController());

final switchController = Get.put(SwitchController());
final SwitchController switchCtrl = Get.find();
final HiveController hCtrl = Get.find();

// final saveController = TextEditingController();
// var data;

class MyHomePage extends StatelessWidget {
  DateTime backbuttonPressedTime;

  // StreamSubscription volumeButtonSubscription;
  // var volumeButtonSubscription;
  var canUseVol = switchController.volBtn.value;
  var data;
  StreamSubscription<HardwareButtons.VolumeButtonEvent>
      _volumeButtonSubscription;

// //Back button functionality

//   Future<bool> onWillPop() async {
//     DateTime currentTime = DateTime.now();
//     bool backbutton = backbuttonPressedTime == null ||
//         currentTime.difference(backbuttonPressedTime) > Duration(seconds: 2);
//     if (backbutton) {
//       ctrl.updateDb(ctrl.count.abs(), ctrl.percent.abs());

//       backbuttonPressedTime = currentTime;
//       Fluttertoast.showToast(
//           msg: 'Press again to exit the app',
//           backgroundColor: Colors.black,
//           textColor: Colors.white);
//       return false;
//     }
//     return true;
//   }

  @override
  Widget build(BuildContext context) {
    print("canUseVol $canUseVol");

    _volumeButtonSubscription =
        HardwareButtons.volumeButtonEvents.listen((event) {
      print("event $event");
    });
    if (canUseVol) {
      _volumeButtonSubscription.cancel();

      // volumeButtonSubscription =
      //     volumeButtonEvents.listen((VolumeButtonEvent event) {
      //   if (event == VolumeButtonEvent.VOLUME_UP) {
      //     print('volume up');
      //     controller.increment();
      //   }
      //   if (event == VolumeButtonEvent.VOLUME_DOWN) {
      //     print('volume down');
      //   }
      //   // do something
      //   // event is either VolumeButtonEvent.VOLUME_UP or VolumeButtonEvent.VOLUME_DOWN
      // });
    }
    controller.calledPre();

    return Scaffold(
      body: SingleChildScrollView(
        child: WillPopScope(
          onWillPop: onWillPop,
          child: Container(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  child: Row(children: [
                    IconButton(
                        icon: refresh,
                        onPressed: () {
                          showMyDialog(context).whenComplete(() {
                            if (controller.counterVal) {
                              data = null;
                              print("data ${controller.counterVal}");
                            }
                          });
                        }),
                    IconButton(
                        icon: circle_outlined,
                        onPressed: () {
                          if (data != null) {
                            data = null;
                            controller.clearArry();
                          } else {
                            titleDialog(context);
                          }
                        }),

                    IconButton(
                        icon: reorder,
                        onPressed: () async {
                          print(data);
                          controller.updateDb(data);

                          data = await Get.to(CounterList());
                          controller.calledPre(data);
                        }),

                    Spacer(), // use Spacer
                    dropDown(context),
                  ]),
                ),
                Container(
                    padding: EdgeInsets.only(top: 200),
                    child: GetBuilder<SwitchController>(
                      init: switchController,
                      initState: (_) {},
                      builder: (_) {
                        return GestureDetector(
                          onTap: () {
                            var soundPlay = _.sound.value;
                            var vibrate =
                                _.vibration.value; //Vibrate.vibrate();
                            if (soundPlay) {
                              SystemSound.play(SystemSoundType.click);
                            }
                            if (vibrate) {
                              Vibrate.vibrate();
                            }

                            controller.increment();
                          },
                          child: circular(context),
                        );
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Future<void> _showMyDialog(context) async {
//   return showDialog<void>(
//     context: context,
//     barrierDismissible: true, // user must tap button!
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Center(
//             child: Text(
//           'Reset',
//           //style: TextStyle(color: Color(0xff56ccd7)
//           //),
//         )),
//         content: SingleChildScrollView(
//           child: ListBody(
//             children: <Widget>[
//               Center(
//                   child: Text(
//                 'Do you wants to reset the counter?',
//                 // style: TextStyle(color: Color(0xff56ccd7))
//               )),
//             ],
//           ),
//         ),
//         actions: <Widget>[
//           Row(
//             children: [
//               Container(
//                 padding: EdgeInsets.only(right: 30), //.all(10),
//                 child: SizedBox(
//                   height: 44,
//                   width: 100,
//                   child: RaisedButton(
//                     // color: Color(0xff465564),
//                     onPressed: () {
//                       controller.clearArry();
//                       Navigator.of(context).pop();
//                     },
//                     child: Text('YES',
//                         style: TextStyle(
//                             fontSize: 12,
//                             color: Get.theme.textTheme.bodyText2.color
//                             // color: Color(0xff56ccd7)
//                             )),
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(10),
//                 child: SizedBox(
//                   height: 44,
//                   width: 100,
//                   child: RaisedButton(
//                     // color: Color(0xff465564),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                     child: Text('CANCEL',
//                         style: TextStyle(
//                             fontSize: 12,
//                             color: Get.theme.textTheme.bodyText2.color
//                             // color: Color(0xff56ccd7)
//                             )),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//         backgroundColor: Color(0xff303b46),
//       );
//     },
//   );
// }

// Future<void> _titleDialog(context) async {
//   return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           backgroundColor: Get.theme.primaryColor,

//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(0.0)), //this right here
//           child: Container(
//             height: 150,
//             padding: EdgeInsets.all(10.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Please save current counter',
//                   // style: TextStyle(color: Color(0xff56ccd7)),
//                 ),
//                 TextField(
//                   // cursorColor: const Color(0xFF1BC0C5),
//                   //  style: TextStyle(color: const Color(0xFF1BC0C5)),
//                   decoration: InputDecoration(
//                     // focusedBorder: UnderlineInputBorder(
//                     //     //  borderSide: BorderSide(color: const Color(0xFF1BC0C5)),
//                     //     ),
//                     hintText: 'Title',
//                     // hintStyle: TextStyle(color: const Color(0xFF1BC0C5)),
//                     //focusColor: const Color(0xFF1BC0C5)
//                   ),
//                   controller: saveController,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Center(
//                     child: SizedBox(
//                       width: 80.0,
//                       height: 45,
//                       child: RaisedButton(
//                         // color: Color(0xff465564),
//                         onPressed: () {
//                           print("value");
//                           print(ctrl.count.abs());
//                           var addCount = CountList(
//                               DateTime.now().millisecondsSinceEpoch,
//                               saveController.text,
//                               ctrl.count.abs(),
//                               ctrl.percent.abs());
//                           // ctrl.arry.add(addCount);
//                           // print(addCount);
//                           hiveController.addCounterList(addCount);
//                           // ctrl.arry.add({
//                           //   "id": DateTime.now().millisecondsSinceEpoch,
//                           //   "name": saveController.text,
//                           //   "count": ctrl.count,
//                           //   "percent": ctrl.percent
//                           // });
//                           Navigator.pop(context, true);
//                           controller.clearArry();
//                         },
//                         child: Text(
//                           "Save",
//                           style: TextStyle(
//                               color: Get.theme.textTheme.bodyText2.color),
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       });
// }

// class Controller extends GetxController {
//   // var count = 0;
//   List<dynamic> arry = [].obs;
//   var percent;
//   var count;
//   var dropValue = 'Settings'.obs;

//   void calledPre() {
//     if (data != null) {
//       //print(data['count']);

//       percent = data[0]?.percentage;
//       count = data[0]?.count;
//     } else {
//       percent = 0.0.obs;
//       count = 0.obs;
//     }
//     update();
//   }

//   void clearArry() {
//     saveController.text = '';
//     count = 0.obs;
//     percent = 0.0.obs;
//     update();
//   }

//   updateDb(count, percent) {
//     // print("Update");

//     // print(data[0]?.count);
//     if (data != null) {
//       //   var arrkey = data.id;
//       //   var index = arry.indexWhere((element) => element.id == arrkey);
//       if (data[0] == null) return;
//       var filteredCount = Hive.box('counterlist');
//       // print('datahhh');
//       // print(data);
//       filteredCount.putAt(
//           data[1], CountList(data[0].id, data[0].name, count, percent));
//     }
//     update();
//   }

//   void increment() {
//     count++;
//     percent = percent + 0.0311;
//     if (percent.abs() > 1.0) {
//       percent = 0.0.obs;
//     }
//     update();
//   }
// }
