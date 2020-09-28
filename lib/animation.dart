import 'package:flutter/material.dart';

class MyAni extends StatefulWidget {
  @override
  _MyAniState createState() => _MyAniState();
}

class _MyAniState extends State<MyAni> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 2,
      ),
    );
    print(myanicon);
    animation = CurvedAnimation(parent: myanicon, curve: Curves.bounceIn)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);
    myanicon.forward();
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      elevation: 15 * animation.value,
      child: GestureDetector(
        onTap: () {
          myanicon.forward(from: 0.0);
          print("hii");
        },
        child: Container(
          width: 200 * animation.value,
          height: 200 * animation.value,
          color: Colors.green[200],
          child: Center(
            child: Text(
              "Hello",
              style: TextStyle(
                fontSize: 34.0 * animation.value,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
