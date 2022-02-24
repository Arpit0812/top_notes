import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Curvess extends StatefulWidget {
  @override
  _CurvessState createState() => _CurvessState();
}

class _CurvessState extends State<Curvess> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white12,
        leading: GestureDetector(
          onTap: () {
            print('arrow back buttons');
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('arrow uturn buttons');
            },
            child: Icon(
              CupertinoIcons.arrow_uturn_left,
              color: Colors.black,
            ),
          ),
          SizedBox(width: ScreenSize.width * 0.02),
          GestureDetector(
            onTap: () {
              print('arrow uturn buttons');
            },
            child: Icon(
              CupertinoIcons.arrow_uturn_right,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                SizedBox(width: ScreenSize.width * 0.02),
                InkWell(
                  onTap: () {
                    print('Done buttons');
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: ScreenSize.height * 0.1),
          Center(
            child: Container(
              height: 250,
              width: 200,
              child: Image(
                image: AssetImage('assets/images/svg/path.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
