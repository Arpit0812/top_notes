import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topnote_app/common/commontextfield.dart';

import 'editaccount_screen.dart';

class Accountrecord extends StatefulWidget {
  const Accountrecord({Key key}) : super(key: key);

  @override
  _AccountrecordState createState() => _AccountrecordState();
}

class _AccountrecordState extends State<Accountrecord> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: ScreenSize.height * 0.1,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      print('arrow buttons');
                    },
                    child: Icon(Icons.arrow_back_ios_outlined),
                  ),
                  Text(
                    'Account Records',
                    style: TextStyle(fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Editaccount(),
                          ));
                    },
                    child: Icon(Icons.edit),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: ScreenSize.height * 0.25,
              width: ScreenSize.width * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/svg/Avatar.png'),
                ),
              ),
            ),
          ),
          Text(
            'Phatuonghah',
            style: TextStyle(fontSize: 22),
          ),
          Text(
            'Premium',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff7C37FA),
            ),
          ),
          SizedBox(height: ScreenSize.height * 0.06),
          commonTextfield(
            hint: 'name',
          ),
          SizedBox(height: ScreenSize.height * 0.02),
          commonTextfield(
            hint: ' Email',
          ),
        ],
      ),
    );
  }
}
