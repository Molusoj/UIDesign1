import "package:flutter/material.dart";
import 'package:gradient_text/gradient_text.dart';
import 'package:ui_design_1/utility/global_util.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
               Image.asset(
                "assets/images/Stay-at-home.gif",
                height: 300,
                width: MediaQuery.of(context).size.width,
              ),

              Padding(
                padding: EdgeInsets.all(16.0),
                child: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                  Navigator.pop(context);
                }),
              ),
            Container(
              margin: EdgeInsets.only(top:250),
                height: 600,
                decoration: BoxDecoration(
                    color: Color(0xFFEFEFEF),
                    borderRadius: BorderRadius.all(Radius.circular(32))),
                child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(children: <Widget>[
                      _buildName(),
                      _buildEmail(),
                      _buildPassword(),
                      SizedBox(height: 10.0),
                      _forgetPassword,
                      SizedBox(height: 10.0),
                      _signupBtn(),
                      _theRest(),

                                  ]))),
          ],
          )]),
      ),
    ));
  }


    Widget _buildName() {
    return Column(
      children: [
        Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10.0),
                Text(
                  'Full Name',
                  style: tLabelStyle,
                ),
                SizedBox(height: 5.0),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 14.0),
                    hintText: "John Doe ...",
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Color(0xFFEBEBEB)

                  ),
                  
                ),
              ]),
        ),
      ],
    );
  }

   Widget _buildEmail() {
    return Column(
      children: [
        Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10.0),
                Text(
                  'Email',
                  style: tLabelStyle,
                ),
                SizedBox(height: 5.0),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 14.0),
                    hintText: "Enter Your Email ...",
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Color(0xFFEBEBEB)

                  ),
                  
                ),
              ]),
        ),
      ],
    );
  }

  Widget _buildPassword() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10.0),
          Text(
            'Password',
            style: tLabelStyle,
          ),
          SizedBox(height: 5.0),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 14.0),
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.black),
               filled: true,
              fillColor: Color(0xFFEBEBEB),
              suffixIcon: Icon(Icons.remove_red_eye, color: Colors.pink[400] ,)
            ),
            obscureText: true,
          ),
        ]);
  }

  final _forgetPassword =Text('Forgot Password?',
                      style: TextStyle(
                        color: Colors.black38,
                      ),
                      textAlign: TextAlign.end,);

  Widget _signupBtn() {
    return  MaterialButton(
              minWidth: double.infinity,
              height: 50,
              onPressed: () {},
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
               
                  )));
  }

   

  Widget _theRest(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 20),
        Text("Or", style: TextStyle(color: Colors.pink[400], fontWeight: FontWeight.bold),),
        SizedBox(height: 20),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             MaterialButton(
              minWidth: 150,
              height: 50,
              onPressed: () {},
              
              child: Text(
                'Facebook',
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.blue[600],
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  )),
               MaterialButton(
              minWidth: 150,
              height: 50,
              onPressed: () {},
              
              child: GradientText("Google",
    gradient: LinearGradient(
    colors: [Color(0xFF4285F4), Color(0xFFEA4335), Color(0xFFFBBC05), Color(0xFF34A853)]),
    style: TextStyle(fontSize: 18),
    textAlign: TextAlign.center),
              textColor: Colors.blue[600],
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  )),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account?"),
            InkWell(
              child: Text('Log In', style: TextStyle(
                color: Colors.pink[400],
                fontWeight: FontWeight.bold
              ),),
              onTap:(){
              Navigator.popAndPushNamed(context, '/login');
            },)
          ],
        )
      ],
    );
  }  
}