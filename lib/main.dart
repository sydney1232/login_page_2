import 'package:flutter/material.dart';

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
        children: [
          Container(
            height: 400,
            child: Stack(
              children: [
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
          )
        ],
      ),
    );
  }
}
