import 'package:flutter/material.dart';
import 'package:quizmaker/Helper/functions.dart';
import 'package:quizmaker/views/home.dart';
import 'package:quizmaker/views/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggerIn = false;

  @override
  void initState() {
    checkUserLoggedInStatus();
    super.initState();
  }

  checkUserLoggedInStatus() async {
    HelperFuncionts.getUserLoggedInDetails().then((value) => {
          setState(() {
            _isLoggerIn = true;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizMaker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    );
  }
}
