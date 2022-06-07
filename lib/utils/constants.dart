import 'package:website_template_by_mala/pages/home.dart';
import 'package:website_template_by_mala/pages/mala.dart';
import 'package:website_template_by_mala/pages/page1.dart';
import 'package:website_template_by_mala/pages/page2.dart';
import 'package:website_template_by_mala/pages/page3.dart';

List navPages = [
  {
    "name": "Home",
    "path": "/",
    "widget": HomePage(),
    "onNavbar": true,
  },
  {
    "name": "Page 1",
    "path": "/page-1",
    "widget": Page1(),
    "onNavbar": true,
  },
  {
    "name": "Page 2",
    "path": "/page-2",
    "widget": Page2(),
    "onNavbar": true,
  },
  {
    "name": "Page 3",
    "path": "/page-3",
    "widget": Page3(),
    "onNavbar": true,
  },
  {
    "name": "Hidden Page",
    "path": "/mala",
    "widget": MalaPage(),
    "onNavbar": false,
  },
];
