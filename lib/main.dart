import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notetaking/constant.dart';
import 'package:flutter_notetaking/view/landing_screen.dart';

import 'view/homepage_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: mainColor));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note Taking App',
      home: HomepageScreen(),
    );
  }
}
