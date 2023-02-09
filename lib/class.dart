// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'Enter your Email',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              filled: true,
              fillColor: Color.fromRGBO(91, 192, 248, 1),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)))),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10.0,
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Enter your Password',
                hintStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Color.fromRGBO(91, 192, 248, 1),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.00)))),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ),
      ],
    );
  }
}

class MyTextStyle extends StatelessWidget {
  late final String myText;
  late final double mySize;

  MyTextStyle(this.myText, this.mySize);
  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: mySize,
      ),
    );
  }
}
