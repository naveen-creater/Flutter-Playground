import 'dart:ffi';

import 'package:flutter/material.dart';
import 'Car.dart';

void main() => runApp(const WidgetDesign());

class WidgetDesign extends StatefulWidget {
  const WidgetDesign({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetDesignState();
  }
}

class _WidgetDesignState extends State<WidgetDesign> {
  var car = Car();

  var textStyle = TextStyle(
    color: Colors.cyan,
    fontSize: 25.0,
  );

  Widget getColumn() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        getRow("Naveen kumar.", Icon(Icons.person)),
        getRow("Sathish K", Icon(Icons.person)),
        getRow("Kalappan", Icon(Icons.person)),
      ],
    );
  }

  Widget getRow(String texName, Icon iconWidget) {
    return Align(
      alignment: Alignment.center,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            iconWidget,
            SizedBox(
              width: 16,
            ),
            Text(
              texName,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Design!"),
        ),
        body: Column(mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
              Text(
                "Please Enter your details.!!",
                style: textStyle,
              ),
            ],
          ),
          getRow("Name", Icon(Icons.contact_support)),
          getRow("Naveen kumar", Icon(Icons.contact_support)),

        ]),
      ),
    );
  }
}
