import 'package:flutter/material.dart';
import 'package:namer_app/landing.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'NanumMyeongjo'),
      home: LandingPage(),
    );
  }
}
