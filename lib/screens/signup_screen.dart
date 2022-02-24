import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:topnote_app/common/buttoncommon.dart';
import 'package:topnote_app/common/commontextfield.dart';
import 'package:topnote_app/signinwithgooglerepo/google_repo.dart';

import 'Signin_Screen.dart';

class Signup extends StatefulWidget {
  const Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFireStore = FirebaseFirestore.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPassWordController = TextEditingController();
  final _key = GlobalKey<FormState>();
  bool icon1 = true;
  bool icon2 = true;
  List<Map<String, dynamic>> Catagories = [
    {
      'color': Color(0xff3C5A99),
      'title': 'Facebook',
      'image': 'assets/images/svg/f.svg'
    },
    {
      'color': Color(0xffF95341),
      'title': 'Google',
      'image': 'assets/images/svg/Combined Shape.svg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/svg/Illus.png'),
            ),
            Center(
              child: Text(
                'Sign Up',
                style: TextStyle(color: Color(0xff0F0A39), fontSize: 30),
              ),
            ),
            SizedBox(height: ScreenSize.height * 0.03),
            commonTextfield(
              controller: _emailController,
              hint: 'Enter Email',
            ),
            SizedBox(height: ScreenSize.height * 0.02),
            commonTextfield(
              controller: _passwordController,
              hint: 'Enter Password',
              icon: GestureDetector(
                child: icon1
                    ? Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      )
                    : Icon(
                        CupertinoIcons.eye_slash_fill,
                        color: Colors.black,
                      ),
                onTap: () {
                  setState(() {
                    icon1 = !icon1;
                  });
                },
              ),
            ),
            SizedBox(height: ScreenSize.height * 0.02),
            commonTextfield(
              controller: _confirmPassWordController,
              hint: 'Enter Confirm  Password',
              icon: GestureDetector(
                child: icon2
                    ? Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      )
                    : Icon(
                        CupertinoIcons.eye_slash_fill,
                        color: Colors.black,
                      ),
                onTap: () {
                  setState(() {
                    icon2 = !icon2;
                  });
                },
              ),
            ),
            SizedBox(height: ScreenSize.height * 0.05),
            buttoncommon(
              onpressed: () {
                Future<UserCredential> userCredential =
                    _auth.createUserWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text);
              },
              text: 'Sign Up',
            ),
            SizedBox(height: ScreenSize.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 2,
                  width: 50,
                  color: Colors.grey,
                ),
                SizedBox(width: ScreenSize.width * 0.02),
                Text(
                  'or',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: ScreenSize.width * 0.02),
                Container(
                  height: 2,
                  width: 50,
                  color: Colors.grey,
                ),
              ],
            ),
            Container(
              height: 50,
              width: double.infinity,
              // color: Colors.red,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      signInWithGoogle();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 60,
                        width: 140,
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Catagories[index]['color'],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(Catagories[index]['image']),
                            SizedBox(width: ScreenSize.width * 0.01),
                            Text(
                              Catagories[index]['title'],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(width: ScreenSize.width * 0.09),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have Acoount?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signin(),
                      ),
                    );
                    print('Sign in buttons');
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
