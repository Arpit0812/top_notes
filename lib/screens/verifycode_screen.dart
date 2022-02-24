import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_screen/otp_screen.dart';
import 'package:topnote_app/common/buttoncommon.dart';
import 'package:topnote_app/screens/successfull.dart';

import 'notes_screen.dart';

class Verifycode extends StatefulWidget {
  @override
  _VerifycodeState createState() => _VerifycodeState();
}

class _VerifycodeState extends State<Verifycode> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: ScreenSize.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios_outlined),
                SizedBox(width: ScreenSize.width * 0.2),
                Text(
                  'Verify code',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: ScreenSize.height * 0.06),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Check your email address, we have sent you the code at phtuonganh@gmail.com",
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          SizedBox(height: ScreenSize.height * 0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: ScreenSize.height * 0.1,
                  width: ScreenSize.width * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(30),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Container(
                  height: ScreenSize.height * 0.1,
                  width: ScreenSize.width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(30),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Container(
                  height: ScreenSize.height * 0.1,
                  width: ScreenSize.width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(30),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Container(
                  height: ScreenSize.height * 0.1,
                  width: ScreenSize.width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(30),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: ScreenSize.height * 0.1),
          buttoncommon(
            text: 'Send',
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Success(),
                ),
              );
              print('Send buttons');
            },
          ),
        ],
      ),
    );
  }
}
