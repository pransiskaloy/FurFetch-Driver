import 'dart:async';

// import 'package:ehatid_user/views/signin.dart';
// import 'package:ehatid_user/views/signin.dart';
import 'package:FurFetch_Driver/Screens/Authenticate/signIn.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Animation/FadeAnimation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: SignIn(),
      home: Load(),
    );
  }
}

class Load extends StatefulWidget {
  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 12),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignIn())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 70),
            Lottie.asset('assets/images/dogbox_lottie.json'),
            Container(
              height: 78,
              child: FadeAnimation(
                  1.5,
                  Text("e-hatid",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        letterSpacing: 2,
                        fontFamily: 'Baloo2',
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 2,
                            offset: Offset(2, 4),
                            color: Color.fromRGBO(33, 150, 243, 10),
                          ),
                          Shadow(
                            blurRadius: 2,
                            offset: Offset(2, 4),
                            color: Color.fromRGBO(33, 150, 243, 10),
                          ),
                        ],
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
