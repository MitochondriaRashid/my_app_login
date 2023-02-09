// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // var displaySize = MediaQuery.of(context);
    // final double displayWidth = displaySize.size.width;
    // final double displayHeight = displaySize.size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 129, 201, 1),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.00),
          child: Column(
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 30.0),
              ),
              SizedBox(height: 30.0),
              LogIn(),
              SizedBox(height: 30.0),
              Container(
                width: 270.0,
                decoration: BoxDecoration(),
                child: ElevatedButton(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    print('Logined');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                ),
              ),
              // SizedBox(height: 30.0),
              Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: MyTextStyle('- OR -', 15)),
              Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: GestureDetector(
                      onTap: () {
                        print('Signed');
                      },
                      child: MyTextStyle('Sign in with', 15))),
              // SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: Image.asset('myTool/images/facebook.png')),
                  SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: Image.asset('myTool/images/google.png')),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  MyTextStyle(' Sign Up', 15.0),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
