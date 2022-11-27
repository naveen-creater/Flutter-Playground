import 'package:flutter/material.dart';

void main() => runApp(UIPractice());

class UIPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UIPracticeStae();
  }
}

Widget container(double width, double height, Color color) {
  return Container(
    width: width,
    height: height,
    color: color,
    padding: EdgeInsets.all(10.0),
    child: Center(
      child: Text(
        "Box!",
        style: TextStyle(
          color: Colors.deepOrange,
        ),
      ),
    ),
  );
}

Widget row() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end, //
    mainAxisSize: MainAxisSize.min,
    children: [
      container(50, 50, Colors.orange),
      container(50, 50, Colors.blue),
      container(50, 50, Colors.lightGreenAccent),
      Text(
        "data",
      ),
    ],
  );
}

Widget column() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      container(100, 50, Colors.orange),
      container(100, 50, Colors.blue),
      container(100, 50, Colors.lightGreenAccent),
      Text(
        "data",
      ),
    ],
  );
}

Widget getCenter() {
  return Center(
    child: container(200, 200, Colors.yellowAccent),
  );
}

Widget align() {
  return Align(
    alignment: Alignment.topRight,
    child: container(150, 150, Colors.cyanAccent),
  );
}

Widget padding() {
  // 40dp padding
  return Center(
    child: Container(
      color: Colors.yellowAccent,
      height: 200,
      width: 200,
      child: Padding(
        padding: EdgeInsets.all(40),
        child: container(200, 200, Colors.green),
      ),
    ),
  );
}

class UIPracticeStae extends State<UIPractice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("UI Practice!"),
        ),
        body: padding(),
      ),
    );
  }
}
