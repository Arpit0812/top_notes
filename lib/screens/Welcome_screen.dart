import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topnote_app/common/buttoncommon.dart';
import 'package:topnote_app/screens/signup_screen.dart';

import 'Signin_Screen.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({Key key}) : super(key: key);

  @override
  _WelcomescreenState createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  PageController _pageController = PageController(initialPage: 0);
  int Selector = 0;
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ScreenSize.height * 0.02),
                SizedBox(height: ScreenSize.height * 0.06),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: ScreenSize.height * 0.04),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'focus on what matters most.\nManage Everything,from big projects to\npersonal moments ',
                    style: TextStyle(color: Color(0xff7B7890), fontSize: 16),
                  ),
                ),
                SizedBox(height: ScreenSize.height * 0.1),
                SvgPicture.asset('assets/images/svg/Illus.svg'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ScreenSize.height * 0.02),
                SizedBox(height: ScreenSize.height * 0.06),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: ScreenSize.height * 0.04),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Remember everything import.\nA central place for your notes, ideas, lists and reminders. ',
                    style: TextStyle(color: Color(0xff7B7890), fontSize: 16),
                  ),
                ),
                SizedBox(height: ScreenSize.height * 0.1),
                SvgPicture.asset('assets/images/svg/onboardingscreen2.svg'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ScreenSize.height * 0.02),
                SizedBox(height: ScreenSize.height * 0.1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: ScreenSize.height * 0.04),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Plan, record and manage projects on any device - even offline.',
                    style: TextStyle(fontSize: 16, color: Color(0xff7B7890)),
                  ),
                ),
                SizedBox(height: ScreenSize.height * 0.03),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: FlatButton(
                    minWidth: double.infinity,
                    height: ScreenSize.height * 0.07,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signin(),
                          ));
                      print('flatbuttons');
                    },
                    child: Text(
                      'Sign in ',
                      style: TextStyle(
                        color: Color(0xff7C37FA),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: ScreenSize.height * 0.02),
                buttoncommon(
                  text: 'Sign up',
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signup(),
                        ));
                  },
                ),
                SizedBox(height: ScreenSize.height * 0.04),
                SvgPicture.asset('assets/images/svg/last.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
