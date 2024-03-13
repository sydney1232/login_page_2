import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_page_2/widget/DarkBlueButton.dart';
import 'package:login_page_2/widget/UserPass.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginePage(),
  ));
}

class LoginePage extends StatefulWidget {
  const LoginePage({super.key});

  @override
  State<LoginePage> createState() => _LoginePageState();
}

class _LoginePageState extends State<LoginePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            child: Stack(
              children: [
                //Purple background
                Positioned(
                  height: 400,
                  top: -40,
                  width: width,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),

                //Purple flower background
                Positioned(
                  height: 400,
                  width: width + 20,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/background-2.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 30),

          //Login Text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      color: Color.fromRGBO(49, 39, 79, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 40),

                //UserPass Textfield
                UserPass(userHint: "Username", passwordHint: "Password"),

                SizedBox(height: 20),

                //Forgot Password Text
                Center(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color.fromRGBO(196, 135, 198, 1)),
                  ),
                ),

                SizedBox(height: 30),

                //Login Button
                DarkBlueButton(text: "Login"),

                SizedBox(height: 30),

                //Create Account
                Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Color.fromRGBO(49, 39, 79, .6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
