import 'package:flutter/material.dart';

class Quesions extends StatelessWidget {
  String quesions;

  Quesions(this.quesions);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Text(
        quesions,
      ),
    );
  }
}
