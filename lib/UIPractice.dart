import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_learn/WatchFace/WatchFace.dart';
import 'WatchFace/Face.dart';

void main() => runApp(UIPractice());

class UIPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UIPracticeStae();
  }
}

Widget container(double width, double height, {Color color = Colors.grey}) {
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
      container(
        50,
        50,
        color: Colors.orange,
      ),
      container(50, 50, color: Colors.blue),
      container(50, 50, color: Colors.lightGreenAccent),
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
      container(100, 50, color: Colors.orange),
      container(100, 50, color: Colors.blue),
      container(100, 50, color: Colors.lightGreenAccent),
      Text(
        "data",
      ),
    ],
  );
}

Widget getCenter() {
  return Center(
    child: container(200, 200, color: Colors.yellowAccent),
  );
}

Widget align() {
  return Align(
    alignment: Alignment.topRight,
    child: container(150, 150, color: Colors.cyanAccent),
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
        child: container(200, 200, color: Colors.green),
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
        child: Text(
          "center Text!",
          style: TextStyle(backgroundColor: Colors.deepOrange),
        ),
      ),
    ),
  );
}

Widget expanded() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Expanded(
        child: container(100, 200, color: Colors.cyanAccent),
        flex: 1,
      ),
      Expanded(
        child: container(100, 200, color: Colors.black87),
        flex: 3,
      ),
      Expanded(
        child: container(100, 200, color: Colors.amberAccent),
        flex: 4,
      ),
    ],
  );
}

Widget flexible() {
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

Widget constraint() {
  return ConstrainedBox(
      // constraints: BoxConstraints.expand(height: 100),
      constraints: BoxConstraints.loose(Size(125, 100)),
      child: Container(
        color: Colors.orange,
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Box Constraint',
              style: TextStyle(color: Colors.white),
            )),
      ));
}

Widget stack() {
  return Center(
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        container(
          200,
          200,
        ),
        container(
          100,
          100,
          color: Colors.indigoAccent,
        )
      ],
    ),
  );
}

Widget stackExample() {
  return Container(
    padding: EdgeInsets.all(14),
    child: CircleAvatar(
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: <Widget>[
          Image.asset(
            "assets/ic_launcher.png",
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 30, 30),
            child: Text("Android"),
          ),
        ],
      ),
      backgroundColor: Colors.brown,
      radius: 100,
    ),
  );
}

Widget buttons() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MaterialButton(
          onPressed: () {},
          shape: const StadiumBorder(),
          textColor: Colors.black,
          color: Colors.blue[300],
          splashColor: Colors.lightGreenAccent,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.white,
          child: Text('Login'),
        ),
        SizedBox(
          height: 20,
        ),
        MaterialButton(
          onPressed: () {},
          onLongPress: () {},
          // shape: const StadiumBorder(),
          // shape: const StadiumBorder(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textColor: Colors.black,
          color: Colors.blue[300],
          splashColor: Colors.lightGreenAccent,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.white,
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Text('Sign Up'),
        ),
        SizedBox(
          height: 20,
        ),
        MaterialButton(
          onPressed: () {},
          onLongPress: () {},
          // shape: const StadiumBorder(),
          shape: const CircleBorder(),
          textColor: Colors.black,
          color: Colors.blue[300],
          splashColor: Colors.lightGreenAccent,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.white,
          // padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Text('ok'),
        ),
        SizedBox(
          height: 60,
        )
      ],
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
        body: WatchFace(),
      ),
    );
  }
}
