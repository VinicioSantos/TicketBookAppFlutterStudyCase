import 'package:flutter/material.dart';
import 'package:flutter_application_1/scrrens/bottom_bar.dart';
import 'package:flutter_application_1/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary
      ),
      home: const BottomBar(),
    );
  }
}
