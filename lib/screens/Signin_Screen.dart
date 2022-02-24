import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topnote_app/common/buttoncommon.dart';
import 'package:topnote_app/common/commontextfield.dart';
import 'package:topnote_app/screens/forgotpassword_screen.dart';

import 'notes_screen.dart';

bool icons = false;

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image(
                image: AssetImage('assets/images/svg/Illus.png'),
              ),
              Center(
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Color(0xff0F0A39), fontSize: 30),
                ),
              ),
              SizedBox(height: ScreenSize.height * 0.04),
              commonTextfield(
                hint: 'email',
              ),
              SizedBox(height: ScreenSize.height * 0.02),
              commonTextfield(
                //obscure: icons,
                hint: 'enter password',
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      icons = !icons;
                    });
                  },
                  child: icons
                      ? Icon(
                          CupertinoIcons.eye_slash_fill,
                          color: Colors.black,
                        )
                      : Icon(
                          Icons.remove_red_eye_rounded,
                          color: Colors.black,
                        ),
                ),
              ),
              SizedBox(height: ScreenSize.height * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Forgotpassword(),
                      ),
                    );
                  },
                  child: Text(
                    'forgot your password',
                    style: TextStyle(
                      color: Color(0xff7B7890),
                    ),
                  ),
                ),
              ),
              SizedBox(height: ScreenSize.height * 0.04),
              buttoncommon(
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notes(),
                    ),
                  );
                },
                text: 'Sign in',
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

                        print('facebook anf google sign in  buttons');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: ScreenSize.height * 0.04,
                          width: ScreenSize.width * 0.35,
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
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('Sign up buttons');
                    },
                    child: Text(
                      'Sign Up',
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
      ),
    );
  }
}
