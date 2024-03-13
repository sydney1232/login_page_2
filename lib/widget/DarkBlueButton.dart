import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarkBlueButton extends StatefulWidget {
  String text;
  DarkBlueButton({super.key, required this.text});

  @override
  State<DarkBlueButton> createState() => _LoginButttonState();
}

class _LoginButttonState extends State<DarkBlueButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color.fromRGBO(49, 39, 79, 1),
      ),
      child: Center(
        child: Text(
          widget.text.toString(),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
