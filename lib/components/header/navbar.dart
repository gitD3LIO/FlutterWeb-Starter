// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';
import 'package:website_template_by_mala/components/header/navitem.dart';
import 'package:website_template_by_mala/utils/constants.dart';

class W_Navbar extends StatefulWidget {
  W_Navbar({Key? key}) : super(key: key);

  @override
  State<W_Navbar> createState() => _W_NavbarState();
}

class _W_NavbarState extends State<W_Navbar> {
  TextStyle titleStyle = TextStyle(
    color: Colors.blue,
    fontFamily: 'Informative',
    fontWeight: FontWeight.w900,
    fontSize: 30,
  );

  TextStyle titleHoverStyle = TextStyle(
    color: Colors.blue,
    fontFamily: 'Informative',
    fontWeight: FontWeight.w900,
    fontSize: 35,
  );

  bool isTitleHovered = false;
  bool isBurgerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (event) {
                    setState(() {
                      isTitleHovered = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      isTitleHovered = false;
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      context.vRouter.to("/");
                    },
                    child: AnimatedDefaultTextStyle(
                      duration: Duration(milliseconds: 200),
                      style: isTitleHovered ? titleHoverStyle : titleStyle,
                      child: Text("Title"),
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width > 1000)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      navPages.length,
                      (index) {
                        return W_Navitem(
                            name: navPages[index]["name"],
                            path: navPages[index]["path"]);
                      },
                    ),
                  ),
                if (MediaQuery.of(context).size.width < 1000)
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isBurgerOpen = !isBurgerOpen;
                        });
                      },
                      child: Icon(Icons.menu_rounded),
                    ),
                  ),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          color: Colors.white,
          height: isBurgerOpen ? 250 : 0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                navPages.length,
                (index) {
                  return W_Navitem(
                      name: navPages[index]["name"],
                      path: navPages[index]["path"]);
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
