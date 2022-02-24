import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:topnote_app/common/notescommon.dart';

class Track extends StatefulWidget {
  const Track({Key key}) : super(key: key);

  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    final Screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
          height: 70,
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
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: Screensize.width * 0.25),
                  Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('alert buttons');
                        },
                        child: Icon(
                          Icons.add_alert_sharp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: Screensize.width * 0.02),
                      GestureDetector(
                        onTap: () {
                          print('alert buttons');
                        },
                        child: Icon(
                          Icons.info,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: Screensize.width * 0.02),
                      GestureDetector(
                        onTap: () {
                          print('alert buttons');
                        },
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: Screensize.width * 0.02),
                      Text(
                        'Done',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Screensize.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: notescommon(Screensize: Screensize),
          ),
          SizedBox(height: Screensize.height * 0.01),
          Divider(thickness: 1),
          SizedBox(height: Screensize.height * 0.01),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Start writing...',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
