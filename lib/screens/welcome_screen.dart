// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stetch/reusable_widgets/reusable_widget.dart';
import 'package:stetch/screens/home_screen.dart';
import 'package:stetch/utils/color_utils.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                hexStringToColor("48C9B0"),
                hexStringToColor("21618C"),
                hexStringToColor("283747"),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.2, 20, 380),
              child: Column(
                children: <Widget>[
                  logoWidget("assets/images/logo1.png"),
                  SizedBox(
                    height: 30,
                  ),
                  welcomeButton(context, () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
