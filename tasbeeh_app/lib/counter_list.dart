import 'package:flutter/material.dart';

class CounterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff455564),
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
                            color: Color(0xff56ccd7),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Container(
                //padding: EdgeInsets.all(20),
                child: Flexible(
                  flex: 1,
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, position) {
                      return listItem();
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

listItem() {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Card(
      color: Color(0xff455564),
      shape: RoundedRectangleBorder(
        side: new BorderSide(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              "Hello",
              style: TextStyle(fontSize: 18.0),
            ),
            Spacer(),
            Text(
              "Hello",
              style: TextStyle(fontSize: 12.0),
            ),
            IconButton(icon: Icon(Icons.person_pin_circle), onPressed: null),
            IconButton(icon: Icon(Icons.close_rounded), onPressed: null)
          ],
        ),
      ),
    ),
  );
}
