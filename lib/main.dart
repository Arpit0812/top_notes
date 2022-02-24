import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:topnote_app/screens/Logo_screen.dart';
import 'package:topnote_app/screens/Signin_Screen.dart';
import 'package:topnote_app/screens/Welcome_screen.dart';
import 'package:topnote_app/screens/accountrecord_screen.dart';
import 'package:topnote_app/screens/allnotes_screen.dart';
import 'package:topnote_app/screens/curve_screen.dart';
import 'package:topnote_app/screens/editaccount_screen.dart';
import 'package:topnote_app/screens/forgotpassword_screen.dart';
import 'package:topnote_app/screens/mic_Screen.dart';
import 'package:topnote_app/screens/notes_screen.dart';
import 'package:topnote_app/screens/signup_screen.dart';
import 'package:topnote_app/screens/successfull.dart';
import 'package:topnote_app/screens/verifycode_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
    );
  }
}
