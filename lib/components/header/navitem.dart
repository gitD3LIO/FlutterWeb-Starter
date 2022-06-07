// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';
import 'package:url_strategy/url_strategy.dart';

class W_Navitem extends StatefulWidget {
  final String name;
  final String path;

  W_Navitem({Key? key, required this.name, required this.path})
      : super(key: key);

  @override
  State<W_Navitem> createState() => _W_NavitemState();
}

class _W_NavitemState extends State<W_Navitem> {
  TextStyle normalStyle = TextStyle(
    fontFamily: "Informative",
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  TextStyle hoverStyle = TextStyle(
    fontFamily: "Informative",
    color: Colors.blue,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  TextStyle selectedStyle = TextStyle(
    fontFamily: "Informative",
    color: Colors.blue,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  bool isHovered = false;

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    if (widget.path == context.vRouter.path) {
      setState(() {
        isSelected = true;
      });
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            context.vRouter.to(widget.path);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (e) {
                setState(() {
                  isHovered = true;
                });
              },
              onExit: (e) {
                setState(() {
                  isHovered = false;
                });
              },
              child: Stack(
                children: [
                  Text(
                    widget.name,
                    style: isSelected
                        ? selectedStyle
                        : isHovered
                            ? hoverStyle
                            : normalStyle,
                  ),
                  AnimatedContainer(
                    margin: EdgeInsets.only(top: 20),
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeIn,
                    color: Colors.blue,
                    height: 2,
                    width: isHovered ? 40 : 0,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
