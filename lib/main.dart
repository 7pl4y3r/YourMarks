import 'package:flutter/material.dart';
import 'package:your_grades/screens/home.dart';
import 'package:your_grades/screens/grade_editor.dart';

main() => runApp(Home());

class Home extends StatelessWidget {

  final String _appName = 'Your Grades';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: _appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.blueGrey,
          primarySwatch: Colors.lightBlue
      ),
      home: HomePage(),

    );
  }
}