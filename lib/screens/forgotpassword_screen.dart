import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:topnote_app/common/buttoncommon.dart';
import 'package:topnote_app/common/commontextfield.dart';
import 'package:topnote_app/screens/verifycode_screen.dart';

class Forgotpassword extends StatefulWidget {
  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: ScreenSize.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios_outlined),
                  SizedBox(width: ScreenSize.width * 0.2),
                  Text(
                    'Forgot Password',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenSize.height * 0.06),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Enter your email address to reset your Password',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            SizedBox(height: ScreenSize.height * 0.03),
            commonTextfield(
              hint: 'Enter email',
            ),
            SizedBox(height: ScreenSize.height * 0.35),
            buttoncommon(
              text: 'Send',
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Verifycode(),
                  ),
                );
                print('Send buttons');
              },
            ),
          ],
        ),
      ),
    );
  }
}
