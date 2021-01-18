import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {

  Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("Email", style: TextStyle(
        color: Color(0xff343B3C),
        fontFamily: 'Playfair Display',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(height: 8,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
          border: Border.all(
            color: Color(0x99E4E4E4),
            width: 1,
          )
        ),
        height: 42,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 20),
            hintText: "Type our email account",
            hintStyle: TextStyle(
              color: Color(0x80546163),
              fontFamily: 'Playfair Display',
              fontSize: 12,
              fontWeight: FontWeight.w400,
            )
          ),
        ),
      )
    ],
  );
}

Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("Password", style: TextStyle(
        color: Color(0xff343B3C),
        fontFamily: 'Playfair Display',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        )
      ),
      SizedBox(height: 10,),
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0x99E4E4E4),
              width: 1,
            )
        ),
        height: 42,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.black87
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 16),
            hintText: "Type your password at least 6 character",
            hintStyle: TextStyle(
              color: Color(0x80546163),
              fontFamily: 'Playfair Display',
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      )
    ],
  );
}

Widget buildForgetPassword(){
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () => print("Forgot Password pressed"),
      padding: EdgeInsets.only(right: 0),
      child: Text(
        "forgot password?",
        style: TextStyle(
          color: Color(0xff546163),
          fontSize: 12,
          fontFamily: 'Playfair Display',
          fontWeight: FontWeight.w700
        )
      ),
    ),
  );
}

Widget buildLoginBtn(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print("Login Pressed"),
      padding: EdgeInsets.all(15),
      color: Color(0xff546163),
      child: Text(
        "Sign In",
        style: TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontFamily: 'Lora',
          ),
      ),
    ),
  );
}

Widget buildSignUpBtn(){
  return GestureDetector(
    onTap: () => print("Sign Up Pressed"),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don\'t have an account? ",
            style: TextStyle(
              color: Color(0x80546163),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lora',
            )
          ),
          TextSpan(
            text: "Register",
            style: TextStyle(
              color: Color(0xff546163),
              fontSize: 12,
              fontWeight: FontWeight.w700,
              fontFamily: 'Lora',
            )
          ),
        ]
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Color(0xff323B3C),
                        fontSize: 24,
                        fontFamily: 'Playfair Display',
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Sign in to your account for access news",
                      style: TextStyle(
                          color: Color(0x80343B3C),
                          fontSize: 16,
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(height: 50),
                    buildEmail(),
                    SizedBox(height: 20),
                    buildPassword(),
                    SizedBox(height: 10),
                    buildForgetPassword(),
                    SizedBox(height:20),
                    buildLoginBtn(),
                    SizedBox(height:10),
                    buildSignUpBtn(),
                  ],
                ),
                ),
              ),
            ],
          ),
        ), 
      ),
    );
  }
}