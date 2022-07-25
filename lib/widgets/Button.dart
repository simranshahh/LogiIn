// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  final Color fillcolor;
  final Icon? icon;
  final String image;

  const Button(
      {required this.text,
      required this.fillcolor,
      this.icon,
      required this.image});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 140,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: widget.fillcolor,

        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Image.network(
              widget.image,
              height: 20,
              width: 50,
            ),
            Text(
              widget.text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),

            //Icon(widget.Icon),
          ],
        ),
        //color: Colors.blue,
      ),
    );
  }
}
