import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topnote_app/common/notescommon.dart';

class Mic extends StatefulWidget {
  const Mic({Key key}) : super(key: key);

  @override
  _MicState createState() => _MicState();
}

class _MicState extends State<Mic> {
  List<Map<String, dynamic>> Catagories = [
    {
      'color': Colors.white54,
      'title': 'Cancel',
      'textcolor': Color(0xff7C37FA),
    },
    {
      'color': Color(0xff7C37FA),
      'title': 'Record',
      'textcolor': Colors.white,
    },
  ];

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: notescommon(
              Screensize: Screensize,
            ),
          ),
          SizedBox(height: Screensize.height * 0.01),
          Divider(),
          SizedBox(height: Screensize.height * 0.01),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Going to vacation',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: Screensize.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: Screensize.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/svg/beach.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'On the first day, we went to the beach, clear water and lots of shells. Swimming is my favorite so i swam with',
              style: TextStyle(color: Color(0xff7B7890), fontSize: 16),
            ),
          ),
          SizedBox(height: Screensize.height * 0.04),
          Image(
            image: AssetImage('assets/images/svg/Audio.png'),
          ),
          Container(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print('changes and Records buttons');
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
                          SizedBox(width: Screensize.width * 0.01),
                          Text(
                            Catagories[index]['title'],
                            style: TextStyle(
                              color: Catagories[index]['textcolor'],
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
        ],
      ),
    );
  }
}
