// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/widgets/Button.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Align(
              alignment: Alignment.topCenter,
            ),
          ),
          Image(
              image: NetworkImage(
                  'https://static.vecteezy.com/system/resources/thumbnails/005/879/539/small/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg')),
          Text(
            'Welcome Back!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'Log in to your existant account of Q Allure',
            style: TextStyle(
                color: Color.fromARGB(255, 126, 125, 125), fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 38, 55, 0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 0.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.grey),
              ),
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 20, 55, 0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Password',
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 161, 160, 160)),
                  fillColor: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(240, 15, 0, 0),
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                  color: Color.fromARGB(255, 57, 56, 56),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: SizedBox(
              height: 50,
              width: 180,
              child: RaisedButton(
                color: Color(0xff0148a4),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomRight,
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Text(
              'Or connect Using',
              style: TextStyle(
                  color: Color.fromARGB(255, 120, 116, 116), fontSize: 15),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: 'Facebook',
                  fillcolor: Color(0xff0148a4),
                  image: 'http://cdn-icons-png.flaticon.com/512/733/733547.png',
                ),
                Button(
                  text: 'Google',
                  fillcolor: Colors.red,
                  image:
                      'http://cdn-icons-png.flaticon.com/512/2702/2702602.png',
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(138, 37, 0, 0),
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Text(
                  ' SignUp?',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
