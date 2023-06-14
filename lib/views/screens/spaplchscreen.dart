import 'dart:async';

import 'package:flutter/material.dart';

import 'package:goverment_service_app/Utills/all_atributes.dart';

class SpalchScreen extends StatefulWidget {
  const SpalchScreen({Key? key}) : super(key: key);

  @override
  State<SpalchScreen> createState() => _SpalchScreenState();
}

class _SpalchScreenState extends State<SpalchScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('HomePage', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: h,
            width: w,
            color: Colors.white12,
          ),
          Positioned(
            left: h * 0.13,
            child: Row(
              children: [
                Image.asset(
                  ImagePath + "3.png",
                  height: h * 0.07,
                ),
                SizedBox(
                  width: w * 0.01,
                ),
                Image.asset(
                  ImagePath + "5.png",
                  height: h * 0.07,
                ),
              ],
            ),
          ),
          Positioned(
            right: h * 0.1,
            child: Row(
              children: [
                Image.asset(
                  ImagePath + "2.png",
                  height: h * 0.07,
                ),
                SizedBox(
                  width: w * 0.05,
                ),
                Image.asset(
                  ImagePath + "4.png",
                  height: h * 0.07,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
