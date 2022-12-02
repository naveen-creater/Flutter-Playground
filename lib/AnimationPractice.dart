import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(UIPractice());

class UIPractice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UIPracticeStae();
  }
}

class UIPracticeStae extends State<UIPractice>
    with SingleTickerProviderStateMixin {
  late AnimationController lottieController;
  var ani = true;

  @override
  void initState() {
    super.initState();

    lottieController = AnimationController(
      vsync: this,
    );

    lottieController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        // lottieController.reset();
      }
    });
  }

  @override
  void dispose() {
    lottieController.dispose();
    super.dispose();
  }

  void setAniSate() {
    setState(() {
      if (ani)
        ani = false;
      else
        ani = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("UI Practice!"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              /* Lottie.network(
                "https://assets8.lottiefiles.com/packages/lf20_xxjvkrex.json",
                animate: true,
                height: 100,
                width: 150,
              ),*/
              Lottie.asset(
                "assets/unlock.json",
                width: 50,
                height: 50,
                // repeat: ani,
                animate: true,
                controller: lottieController,
                onLoaded: (composition) {
                  lottieController.duration = composition.duration;
                  lottieController.forward();
                },
              ),
              SizedBox(
                height: 30,
              ),
              Lottie.asset(
                "assets/cycle-rider.json",
                width: 50,
                height: 50,
                animate: ani,
                repeat: ani,
                // controller: lottieController,
                onLoaded: (composition) {
                  lottieController.duration = composition.duration;
                  lottieController.forward();
                },
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: setAniSate,
                child: Text("Change"),
              ),
            ],
          ),
          ]
        ),
      ),
    );
  }
}
