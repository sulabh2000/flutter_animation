import 'package:animation_app/animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: MyAni(),
    ),
    debugShowCheckedModeBanner: false,
  )
  );
}
