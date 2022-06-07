import 'package:website_template_by_mala/pages/home.dart';
import 'package:website_template_by_mala/pages/page1.dart';
import 'package:website_template_by_mala/pages/page2.dart';
import 'package:website_template_by_mala/pages/page3.dart';
import 'package:flutter/material.dart';

List navPages = [
  {"name": "Home", "path": "/", "widget": HomePage()},
  {"name": "Page 1", "path": "/page-1", "widget": Page1Home()},
  {"name": "Page 2", "path": "/page-2", "widget": Page2Home()},
  {"name": "Page 3", "path": "/page-3", "widget": Page3Home()}
];
