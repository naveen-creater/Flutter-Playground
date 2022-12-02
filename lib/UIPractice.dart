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

Widget sizeBox() {

  return SizedBox(
    height: 100,
    width: 200,
    child: Card(
      color: Colors.brown,
      child: Center(
        child: Text("center Text!", style: TextStyle(backgroundColor: Colors.deepOrange),),
      ),
    ),
  );
}

Widget expanded(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Expanded(
        child: container(100, 200, Colors.cyanAccent),
        flex: 1,
      ),
      Expanded(
        child: container(100, 200, Colors.black87),
        flex: 3,
      ),
      Expanded(
        child: container(100, 200, Colors.amberAccent),
        flex: 4,
      ),
    ],
  );
}

Widget flexible(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Flexible(
        child: Container(color: Colors.cyanAccent, height: 80, width: 80),
        // fit: FlexFit.tight,
        flex: 2,
      ),
      Flexible(
        child: Container(color: Colors.indigoAccent, height: 80, width: 80),
        flex: 6,
        // fit: FlexFit.tight,
      ),
      Flexible(
        child: Container(color: Colors.orange, height: 80, width: 80),
        flex: 8,
        // fit: FlexFit.tight,
      ),
    ],
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
        body: flexible(),
      ),
    );
  }
}
