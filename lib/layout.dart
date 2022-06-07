// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:website_template_by_mala/components/header/navbar.dart';

class W_Layout extends StatelessWidget {
  final Widget slot;
  const W_Layout({Key? key, required this.slot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              W_Navbar(),
              slot,
            ],
          ),
        ),
      ),
    );
  }
}
