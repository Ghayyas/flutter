import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tasbeeh_app/rxController/haive.dart';
import 'package:tasbeeh_app/rxController/controller.dart';

import 'models/counterInterface.dart';

final controller = Get.put(Controller());
final Controller ctrl = Get.find();
HiveController ctl = Get.put(HiveController());

class CounterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterList = Hive.box('counterlist');
    return Scaffold(
        //backgroundColor: Color(0xff455564),
        body: Container(
      padding: EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Counter list",
                    style:
                        TextStyle(fontSize: 20.4, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Container(
            child: Flexible(
                flex: 1,
                child: ValueListenableBuilder(
                    valueListenable: counterList.listenable(),
                    builder: (context, box, _) {
                      return ListView.builder(
                        itemCount: counterList.length,
                        itemBuilder: (context, index) {
                          var getVal =
                              Hive.box('counterlist').getAt(index) as CountList;

                          return listItem(getVal, index);
                        },
                      );
                    })

                // },
                // ),
                ),
          )
        ],
      ),
    ));
  }
}

listItem(arr, index) {
  return GestureDetector(
    onTap: () {
      Get.back(result: [arr, index]);
    },
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Card(
        color: Get.theme.scaffoldBackgroundColor, //Color(0xff455564),
        shape: RoundedRectangleBorder(
          side: new BorderSide(color: Colors.white, width: 0.4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${arr.name}",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Spacer(),
              Text(
                //'43',
                "${arr.count}",
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'digital',
                ),
              ),
              IconButton(icon: Icon(Icons.create_outlined), onPressed: null),
              IconButton(
                  icon: Icon(Icons.cancel_outlined,
                      color: Get.theme.iconTheme.color),
                  onPressed: () {
                    ctl.delDb(index);
                  })
            ],
          ),
        ),
      ),
    ),
  );
}
