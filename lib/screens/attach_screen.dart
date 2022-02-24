import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topnote_app/common/buttoncommon.dart';

class Attach extends StatefulWidget {
  @override
  _AttachState createState() => _AttachState();
}

class _AttachState extends State<Attach> {
  List<Map<String, dynamic>> Catagories = [
    {
      'image': 'assets/images/svg/magician-hat.svg',
      'title': 'Basic',
      't1': 'synce on 2 device',
      't2': 'Access notebook in offline mode',
      't3': 'Search in documents and attachments',
      't4': 'Annotate PDF files',
      'sub title': 'free',
    },
    {
      'image': 'assets/images/svg/Group 5.svg',
      'title': 'Premium',
      't1': 'synce on multiple device',
      't2': 'Access notebook in offline mode',
      't3': 'Search in documents and attachments',
      't4': 'Annotate PDF files',
      'sub title': '\$6,99 Per month',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: ScreenSize.height * 0.1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SafeArea(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      print('Clear buttons');
                    },
                    child: Icon(Icons.clear),
                  ),
                  SizedBox(width: ScreenSize.width * 0.17),
                  Text(
                    'Choose your plan',
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
          SizedBox(height: ScreenSize.height * 0.1),
          Container(
            height: ScreenSize.height * 0.7,
            // color: Colors.red,
            child: ListView.builder(
              itemCount: Catagories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      height: ScreenSize.height * 0.5,
                      width: ScreenSize.width * 0.65,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 0.1,
                              offset: Offset(1, 1)),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: ScreenSize.height * 0.06),
                            Center(
                              child: Text(
                                Catagories[index]['title'],
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            SizedBox(height: ScreenSize.height * 0.02),
                            Text(
                              Catagories[index]['t1'],
                              style: TextStyle(
                                color: Color(0xff7B7890),
                              ),
                            ),
                            SizedBox(height: ScreenSize.height * 0.01),
                            Text(
                              Catagories[index]['t2'],
                              style: TextStyle(
                                color: Color(0xff7B7890),
                              ),
                            ),
                            SizedBox(height: ScreenSize.height * 0.01),
                            Text(
                              Catagories[index]['t3'],
                              style: TextStyle(
                                color: Color(0xff7B7890),
                              ),
                            ),
                            SizedBox(height: ScreenSize.height * 0.01),
                            Text(
                              Catagories[index]['t4'],
                              style: TextStyle(
                                color: Color(0xff7B7890),
                              ),
                            ),
                            SizedBox(height: ScreenSize.height * 0.03),
                            Text(
                              Catagories[index]['sub title'],
                              style: TextStyle(fontSize: 22),
                            ),
                            SizedBox(height: ScreenSize.height * 0.03),
                            buttoncommon(
                              text: 'Select',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        child: SvgPicture.asset(
                          Catagories[index]['image'],
                        ),
                        left: 100,
                        top: -10),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
