import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTestApp();
}

class MyTestApp extends State<MyApp> {
  var questions = [
    'whats your fav color',
    'whats your fav bike',
    'whats your Name!',
  ];

  var qs = "Name";
  var aff = 0;

  void answersQuesion() {
    setState(() {
      aff++;
      qs = "clicked Name $aff";
    });

    Navigator.pop(context);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Test App",
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  // width: ,
                  child: Text(
                    "Quesion 1",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: answersQuesion,
                  child: Text("Answer 1"),
                ),
                ElevatedButton(
                  onPressed: answersQuesion,
                  child: Text("Answer 2"),
                ),
                ElevatedButton(
                  onPressed: answersQuesion,
                  child: Text(qs),
                ),
                Container(
                  /* constraints: BoxConstraints.expand(
                    height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
                  ),*/
                  padding: const EdgeInsets.all(10),
                  color: Colors.blue,
                  alignment: Alignment.center,
                  transform: Matrix4.rotationZ(0.2),
                  child: const Text(
                    'Container box!!',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
