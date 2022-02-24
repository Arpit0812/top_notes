import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttoncommon extends StatelessWidget {
  const buttoncommon({
    this.text,
    this.onpressed,
    Key key,
  }) : super(key: key);
  final String text;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    final Screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: FlatButton(
        minWidth: double.infinity,
        height: Screensize.height * 0.07,
        color: Color(0xff7C37FA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: onpressed,
        child: Text(
          ' $text',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
