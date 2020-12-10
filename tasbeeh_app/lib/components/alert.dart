import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Dialogue {
  // Future<void> showAlertDialog(context);
}

class CustomDialogUI implements Dialogue {
  var listArray = [
    'No ads',
    '10 different themes',
    'Lap count display',
    'Lap setting',
    'Count edit options',
    'Split screen support from nougat verison'
  ];

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = RaisedButton(
      color: Color(0xff465564),
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Get Pro', style: TextStyle(fontSize: 12)),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Get.theme.primaryColor,
      title: Center(
          child: Text(
        'Only available in Pro version',
        style: TextStyle(fontSize: 14),
      )),
      content: Container(
        width: 70,
        height: 120,
        child: ListView.builder(
            //shrinkWrap: true,
            itemCount: listArray.length,
            // Provide a builder function. This is where the magic happens.
            // Convert each item into a widget based on the type of item it is.
            itemBuilder: (context, index) {
              return Container(
                //padding: EdgeInsets.all(0),
                child: Text(
                  "-" + listArray[index],
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              );
            }),
      ),
      actions: [
        okButton
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [okButton],
        // ),
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ButtonBarTheme(
            data: ButtonBarThemeData(alignment: MainAxisAlignment.center),
            child: alert);
      },
    );
  }

  // Future<void> showAlertDialog(context) async {
  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: true, // user must tap button!
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Center(
  //             child: Text(
  //           'Only available in Pro version',
  //           style: TextStyle(color: Color(0xff56ccd7)),
  //         )),
  //         content: SingleChildScrollView(
  //             // padding: EdgeInsets.only(bottom: 2),
  //             child: ListView.builder(
  //                 shrinkWrap: true,
  //                 itemCount: listArray.length,
  //                 // Provide a builder function. This is where the magic happens.
  //                 // Convert each item into a widget based on the type of item it is.
  //                 itemBuilder: (context, index) {
  //                   return ListTile(
  //                     title: Text(listArray[index]),
  //                     leading: Icon(CupertinoIcons.minus),
  //                   );
  //                 })),
  //         actions: <Widget>[
  //           Row(
  //             // crossAxisAlignment: CrossAxisAlignment.center,
  //             mainAxisAlignment: MainAxisAlignment.center,

  //             //crossAxisAlignment: CrossAxisAlignment.baseline,
  //             children: [
  //               Container(
  //                 padding: EdgeInsets.only(right: 30), //.all(10),
  //                 child: SizedBox(
  //                   // height: 44,
  //                   // width: 100,
  //                   child: RaisedButton(
  //                     color: Color(0xff465564),
  //                     onPressed: () {
  //                       Navigator.of(context).pop();
  //                     },
  //                     child: const Text('Get Pro',
  //                         style: TextStyle(
  //                             fontSize: 12, color: Color(0xff56ccd7))),
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
}
