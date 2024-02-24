import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testt/ScreenSize.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double width = ScreenSize.width(context);
    //double height = ScreenSize.height(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          height: ScreenSize.height(context),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: const AlignmentDirectional(1, -0.3),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1, -0.3),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.0),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(color: Colors.orangeAccent),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
