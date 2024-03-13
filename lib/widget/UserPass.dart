import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPass extends StatelessWidget {
  String userHint;
  String passwordHint;
  UserPass({super.key, required this.userHint, required this.passwordHint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(196, 135, 198, .4),
              blurRadius: 20,
              offset: Offset(0, 10))
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.grey.shade300,
            ))),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: userHint.toString(),
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: passwordHint.toString(),
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
