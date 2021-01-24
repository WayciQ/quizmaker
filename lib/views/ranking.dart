import 'package:flutter/material.dart';
import 'package:quizmaker/views/Ranking//generated/GeneratedGroup41Widget.dart';
import 'package:quizmaker/views/Ranking//generated/GeneratedGroup40Widget.dart';
import 'package:quizmaker/views/Ranking//generated/GeneratedGroup39Widget.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedGroup14Widget4.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedGroup4Widget4.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedRANKINGWidget.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedGroup42Widget.dart';
import 'package:quizmaker/widgets/widgets.dart';

class Ranking extends StatefulWidget {

  Ranking();
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Ranking> {
  int score = 1;
  String name = 'Trung';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: appBar(context),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black87),
          brightness: Brightness.light,
        ),
        body: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "RANKING",
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.171875,
                    fontSize: 40.0,
                    fontFamily: 'Berlin Sans FB Demi Bold',
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 38, 152, 243),
                    /* letterSpacing: 0.0, */
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: GeneratedGroup39Widget(),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: GeneratedGroup40Widget(),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: GeneratedGroup41Widget(),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: GeneratedGroup42Widget(),
                ),
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: blueButton(
                        context: context,
                        label: "Về Trang chủ",
                        buttonWidth: MediaQuery.of(context).size.width / 2))
              ]),
        )

    );
  }
}
