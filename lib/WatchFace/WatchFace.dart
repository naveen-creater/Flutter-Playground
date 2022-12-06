import 'package:flutter/material.dart';
import 'Face.dart';

class WatchFace extends StatefulWidget {
  const WatchFace({Key? key}) : super(key: key);

  @override
  State<WatchFace> createState() => _WatchFaceState();
}

class _WatchFaceState extends State<WatchFace> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 150,
          backgroundColor: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.battery_4_bar_sharp, color: Colors.white,),
                  SizedBox(width: 4,),
                  Text(
                    "10:10",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Outdoor Runing",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Face(),
              SizedBox(
                height: 15,
              ),
              Text(
                "Settings",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
