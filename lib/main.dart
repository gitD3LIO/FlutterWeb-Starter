// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';
import 'package:website_template_by_mala/layout.dart';
import 'utils/constants.dart';

void main() {
  querySelector("#loader")?.remove();

  runApp(App());
  Future.delayed(Duration.zero,
      () => window.history.pushState(null, "App", '/'.toLowerCase()));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VRouter(
      debugShowCheckedModeBanner: false, // VRouter acts as a MaterialApp
      initialUrl: "/",
      title: "FlutterWeb Starter by Mala",
      buildTransition: (animation1, _, child) =>
          FadeTransition(opacity: animation1, child: child),

      routes: List.generate(
        navPages.length,
        (index) {
          return VWidget(
            name: navPages[index]["name"],
            path: navPages[index]["path"],
            widget: W_Layout(slot: navPages[index]["widget"]),
          );
        },
      ), // Put your VRouteElements here
    );
  }
}
