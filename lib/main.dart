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
    return Scaffold();
  }
}
