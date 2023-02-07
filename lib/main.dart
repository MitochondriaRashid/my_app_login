// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
    var displaySize = MediaQuery.of(context);
    final double displayWidth = displaySize.size.width;
    final double displayHeight = displaySize.size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(
          children: [
            Container(
              width: 600,
              height: 600,
              color: Color.fromRGBO(189, 205, 214, 1),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset('myTool/images/Jobs.png'),
                        ),
                        Text('Steve Jobs',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black))
                      ],
                    ),
                    Text(
                      'Mən həmişə demişəm,indi də deyəcəm. Rəhimin götündən başqa ağzı da var!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 55, 55, 55)),
                    ),
                    Container(
                      child: SizedBox(
                        width: displayWidth/2,
                        height: displayHeight/10.9,
                        child: ElevatedButton(
                            
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Confirm'),
                            ), 
                            onPressed: () {
                              print('Confirmed');
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class MyStackApp600 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 600,
          height: 600,
          color: Color.fromRGBO(240, 229, 207, 1),
        ),
        Column(
          children: <Widget>[
            Image.asset('myTool/images/user-1.jpeg'),
            Padding(
              padding: const EdgeInsets.all(10.00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 150.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.00)),
                      color: Color.fromRGBO(247, 246, 242, 1),
                    ),
                    child: Center(
                      child: Text(
                        'Accept',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(75, 101, 135, 1),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.00)),
                      color: Color.fromRGBO(247, 246, 242, 1),
                    ),
                    child: Center(
                      child: Text(
                        'Decline',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(75, 101, 135, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Terms and conditions",
                style: TextStyle(
                    color: Color.fromRGBO(75, 101, 135, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MystackApp600Upper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 600,
          height: 600,
          color: Color.fromRGBO(240, 229, 207, 1),
        ),
        Column(
          children: <Widget>[
            Transform(
              transform: Matrix4.identity()..scale(1.1, 0.4),
              child: Image.asset('myTool/images/user-1.jpeg'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 150.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.00)),
                      color: Color.fromRGBO(247, 246, 242, 1),
                    ),
                    child: Center(
                      child: Text(
                        'Accept',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(75, 101, 135, 1),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.00)),
                      color: Color.fromRGBO(247, 246, 242, 1),
                    ),
                    child: Center(
                      child: Text(
                        'Decline',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(75, 101, 135, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Terms and conditions",
                style: TextStyle(
                    color: Color.fromRGBO(75, 101, 135, 1),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
