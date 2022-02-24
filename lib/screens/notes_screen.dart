import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topnote_app/common/commontextfield.dart';
import 'package:topnote_app/screens/allnotes_screen.dart';

import 'accountrecord_screen.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  bool copy = true;
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _globalKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: ScreenSize.height * 0.03),
              commonTextfield(
                prefix: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hint: 'Search note',
              ),
              SizedBox(height: ScreenSize.height * 0.03),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AllNotes(),
                    ),
                  );
                },
                child: SvgPicture.asset('assets/images/svg/Group 1.svg'),
              ),
              SizedBox(height: ScreenSize.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Recent',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: ScreenSize.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    // SvgPicture.asset("assets/images/svg/Base.svg"),
                    SizedBox(width: ScreenSize.width * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shopping list',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'May,29',
                          style: TextStyle(
                            color: Color(0xff7B7890),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          print('arrow buttons');
                        },
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  thickness: 1,
                ),
              ),
              SizedBox(height: ScreenSize.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    SizedBox(width: ScreenSize.width * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'To do list',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'May,13',
                          style: TextStyle(
                            color: Color(0xff7B7890),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          print('arrow buttons');
                        },
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  thickness: 1,
                ),
              ),
              SizedBox(height: ScreenSize.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    SizedBox(width: ScreenSize.width * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Going to vacation',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'May,12',
                          style: TextStyle(
                            color: Color(0xff7B7890),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          print('arrow buttons');
                        },
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                  alignment: Alignment.topRight,
                  child: FloatingActionButton(
                    child: Icon(Icons.add),
                    backgroundColor: Color(0xff7C37FA),
                    onPressed: () {
                      showDialog(
                        // barrierDismissible: false,
                        context: context,
                        builder: (context) => SimpleDialog(
                          children: [
                            SvgPicture.asset(
                                'assets/images/svg/Icon - Leaf.svg'),
                            Center(child: Text('Start Writing')),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 100,
              decoration: BoxDecoration(
                color: Color(0xff7C37FA),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: ScreenSize.width * 0.02),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('icon');
              },
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  copy = !copy;
                });
                print('icon');
              },
              child: copy
                  ? Icon(
                      Icons.copy,
                    )
                  : Icon(
                      Icons.file_copy_sharp,
                      color: Colors.grey,
                    ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Accountrecord(),
                  ),
                );
                print('icon');
              },
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
