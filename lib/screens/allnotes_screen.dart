import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:topnote_app/screens/curve_screen.dart';
import 'package:topnote_app/screens/track.dart';

import 'attach_screen.dart';
import 'camera_screen.dart';
import 'mic_Screen.dart';

class AllNotes extends StatefulWidget {
  const AllNotes({Key key}) : super(key: key);

  @override
  _AllNotesState createState() => _AllNotesState();
}

class _AllNotesState extends State<AllNotes> {
  int selector = 0;
  List<Widget> screens = [
    Track(),
    camera(),
    Curvess(),
    Mic(),
    Attach(),
  ];
  @override
  Widget build(BuildContext context) {
    final Screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: screens[selector],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selector = value;
          });
        },
        currentIndex: selector,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'track',
            icon: Icon(
              Icons.track_changes,
              color: Color(0xff7C37FA),
            ),
          ),
          BottomNavigationBarItem(
            label: 'camera',
            icon: Icon(
              Icons.camera_alt,
              color: Color(0xff7C37FA),
            ),
          ),
          BottomNavigationBarItem(
            label: 'curve',
            icon: Icon(
              Icons.all_inclusive_outlined,
              color: Color(0xff7C37FA),
            ),
          ),
          BottomNavigationBarItem(
            label: 'mic',
            icon: Icon(
              Icons.mic_none_outlined,
              color: Color(0xff7C37FA),
            ),
          ),
          BottomNavigationBarItem(
            label: 'attach',
            icon: Icon(
              Icons.attach_file,
              color: Color(0xff7C37FA),
            ),
          ),
        ],
      ),
    );
  }
}
