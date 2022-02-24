import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class camera extends StatefulWidget {
  const camera({Key key}) : super(key: key);

  @override
  _cameraState createState() => _cameraState();
}

class _cameraState extends State<camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 1000,
          width: 1000,
          child: Lottie.asset('assets/images/svg/3173-camera.json'),
        ),
      ),
    );
  }
}
