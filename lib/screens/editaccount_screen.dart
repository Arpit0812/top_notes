import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:topnote_app/common/commontextfield.dart';

class Editaccount extends StatefulWidget {
  @override
  _EditaccountState createState() => _EditaccountState();
}

class _EditaccountState extends State<Editaccount> {
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
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      print('arrow buttons');
                    },
                    child: Icon(Icons.arrow_back_ios_outlined),
                  ),
                  SizedBox(width: ScreenSize.width * 0.25),
                  Text(
                    'Edit Account',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: ScreenSize.height * 0.04),
          Center(
            child: Container(
              height: ScreenSize.height * 0.15,
              width: ScreenSize.width * 0.28,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/svg/Avatar.png'),
                ),
              ),
              child: Container(
                color: Colors.indigo.withOpacity(0.6),
                child: GestureDetector(
                  onTap: () {
                    print('Camera buttons');
                  },
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: ScreenSize.height * 0.02),
          Text(
            'Username',
            style: TextStyle(fontSize: 22, color: Colors.grey),
          ),
          SizedBox(height: ScreenSize.height * 0.01),
          Text(
            'Premium',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff7C37FA),
            ),
          ),
          SizedBox(height: ScreenSize.height * 0.06),
          commonTextfield(
            hint: 'Enter username',
          ),
          SizedBox(height: ScreenSize.height * 0.02),
          commonTextfield(
            hint: 'Enter Email',
          ),
        ],
      ),
    );
  }
}
