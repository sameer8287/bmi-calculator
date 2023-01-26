import 'package:flutter/material.dart';
import 'inputpage.dart';
import 'results.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
      // initialRoute: '/',
      // routes: {
      //   '/':(context) => InputPage(),
      //   'second' : (context) => Results_page(),
      // },
    );
  }
}
