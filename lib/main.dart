import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTestApp();
}

class MyTestApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My first App!",
            style: TextStyle(color: Colors.deepOrange),
            textAlign: TextAlign.end,
            textWidthBasis: TextWidthBasis.longestLine,
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        /*borderSide: BorderSide(
                            color: const Color(0xffff4141),
                            width: 2.0,
                            style: BorderStyle.solid)*/
                        ),
                    filled: true,
                    icon: Icon(Icons.person),
                    hintText: "Enter your name!!",
                    labelText: "Name*",
                    prefixText: "Name: "),
                onSaved: (String? value) {},
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    icon: Icon(Icons.mail),
                    hintText: "Enter your Mail!!",
                    labelText: "Mail Id*"),
                showCursor: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
