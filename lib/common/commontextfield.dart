import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class commonTextfield extends StatelessWidget {
  const commonTextfield({
    Key key,
    this.icon,
    this.hint,
    this.prefix,
    this.controller,
    //this.obscure,
  }) : super(key: key);

  final Widget icon;
  final hint;
  final Widget prefix;
  final TextEditingController controller;
  //final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        controller: controller,
        // obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          suffixIcon: icon,
          prefixIcon: prefix,
          contentPadding: EdgeInsets.all(5),
          fillColor: Colors.grey.withOpacity(0.2),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
