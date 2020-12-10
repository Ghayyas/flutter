import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepage.dart';

var Maincolor = Color(0xff56ccd7);
final controller = Get.put(Controller());
final Controller ctrl = Get.find();
call() {
  print(ctrl.arry);
}

class CounterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text("Counter list",
                    style: TextStyle(
                        fontSize: 20.4,
                        // color: Color(0xff56ccd7),
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Container(
            //padding: EdgeInsets.all(20),
            //child: RaisedButton(onPressed: () => call()),
            child: Flexible(
              flex: 1,
              child: ListView.builder(
                itemCount: ctrl.arry.length,
                itemBuilder: (context, index) {
                  return listItem(ctrl.arry[index]);
                },
              ),
            ),
          )
        ],
      ),
    ));
  }
}

listItem(arr) {
  // print(arr['count']);
  return GestureDetector(
    onTap: () {
      Get.back(result: arr);
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
              //  ctrl.arry.map((e) =>

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${arr['name']}",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 18.0,
                    // color: Maincolor
                  ),
                ),
              ),
              Spacer(),
              Text(
                //'43',
                "${arr['count']}",
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'digital',
                  // color: Get.theme.iconTheme.color

                  // color: Maincolor
                ),
              ),
              IconButton(icon: Icon(Icons.create_outlined), onPressed: null),
              IconButton(
                  icon: Icon(Icons.cancel_outlined,
                      color: Get.theme.iconTheme.color
                      // color: Maincolor
                      ),
                  onPressed: null)
            ],
          ),
        ),
      ),
    ),
  );
}
