import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notescommon extends StatelessWidget {
  const notescommon({
    Key key,
    @required this.Screensize,
  }) : super(key: key);

  final Size Screensize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Screensize.height * 0.05,
      width: Screensize.width * 0.3,
      decoration: BoxDecoration(
        color: Colors.indigo.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.book,
            color: Colors.indigo,
          ),
          Text(
            'All notes',
            style: TextStyle(
              color: Colors.indigo,
            ),
          ),
          GestureDetector(
            onTap: () {
              print("keyboard arrow buttons");
            },
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
