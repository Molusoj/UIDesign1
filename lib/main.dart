import "package:flutter/material.dart";
import 'package:ui_design_1/pages/login.dart';

import 'pages/signup.dart';

void main() =>
    runApp(MaterialApp(theme: ThemeData.light(), initialRoute: '/', routes: {
      '/': (context) => HomePage(),
      '/login': (context) => LoginScreen(),
      '/signup': (context) => SignUpScreen(),
    }));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink[400],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Image.asset(
                "assets/images/Stay-at-home.gif",
                height: 300,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            SizedBox(height: 50),
            MaterialButton(
              minWidth: 300,
              height: 50,
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => SignUpScreen()));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 22),
              ),
              textColor: Colors.white,
              color: Colors.pink[400],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: Colors.pink[400],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              minWidth: 300,
              height: 50,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 22),
              ),
              color: Color(0xFFEBEBEB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
