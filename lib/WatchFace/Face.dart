import 'package:flutter/material.dart';

class Face extends StatefulWidget {
  const Face({Key? key}) : super(key: key);

  @override
  State<Face> createState() => _FaceState();
}

class _FaceState extends State<Face> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      shape: StadiumBorder(),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Container(
          // color: Colors.lightGreen,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Column(
                // mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.navigation,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "GPS",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: 23,
              ),
              Icon(
                Icons.directions_run,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(
                width: 23,
              ),
              Column(
                // mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.heart_broken,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "89",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
