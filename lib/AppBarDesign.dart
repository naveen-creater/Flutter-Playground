import 'package:flutter/material.dart';

void main() => runApp(const WidgetDesign());

class WidgetDesign extends StatefulWidget {
  const WidgetDesign({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetDesignState();
  }
}

class _WidgetDesignState extends State<WidgetDesign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              print("Gesture Test!!");
            },
            child: const Icon(
              Icons.ac_unit,
              size: 22,
              semanticLabel: "Widget",
            ),
          ),
          title: const Text("Design!"),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                print("Share your app!");
              },
              child: const Icon(
                Icons.share,
                size: 18,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                print("Gesture Bank!");
              },
              child: const Icon(
                Icons.account_balance_sharp,
                size: 18,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                print("Gesture addd");
              },
              child: const Icon(
                Icons.add,
                size: 18,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                print("Gesture add call");
              },
              child: const Icon(
                Icons.add_call,
                size: 18,
              ),
            ),
          ],
          elevation: 30,
          shadowColor: Colors.cyanAccent,
          backgroundColor: Colors.orange,
        ),
        body: Container(
          color: Colors.deepPurple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.workspace_premium, size: 50.0),
              Icon(Icons.work, size: 100.0),
              Icon(Icons.workspace_premium, size: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
