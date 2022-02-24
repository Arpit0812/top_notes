import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Welcome_screen.dart';

class Logoscreen extends StatefulWidget {
  @override
  _LogoscreenState createState() => _LogoscreenState();
}

class _LogoscreenState extends State<Logoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Welcomescreen(),
                    ),
                  );
                },
                child: SvgPicture.asset('assets/images/svg/Logo.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
