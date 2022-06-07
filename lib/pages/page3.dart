// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 100,
      color: Colors.blue,
      child: Center(
        child: Text(
          "Page 3",
          style: TextStyle(
            fontFamily: "MusticaPro",
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
