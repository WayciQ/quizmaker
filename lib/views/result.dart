import 'package:flutter/material.dart';
import 'package:quizmaker/services/database.dart';
import 'package:quizmaker/widgets/widgets.dart';

import 'ranking.dart';

class Results extends StatefulWidget {
  final int correct, incorrect, total;
  final String quizIdResult,uid;
  Results(
      {@required this.correct,
        @required this.incorrect,
        @required this.total,
        @required this.quizIdResult,
        @required this.uid});
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  DatabaseService databaseService = new DatabaseService();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 25),
                  children: <TextSpan>[
                    TextSpan(
                        text: '${widget.correct}/',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black54)),
                    TextSpan(
                        text: '${widget.total}',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.green)),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "bạn có ${widget.correct} câu trả lời đúng "
                "và ${widget.incorrect} câu trả lời sai",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 14,
              ),
              GestureDetector(
                  onTap: () {
                    createRankingResult();
                  },
                  child: blueButton(
                      context: context,
                      label: "Xem bảng xếp hạng",
                      buttonWidth: MediaQuery.of(context).size.width / 2))
            ],
          ),
        ),
      ),
    );
  }

  createRankingResult() async {
      print(widget.correct.toString());
      Map<String, String> quizMap = {
        "quizId": widget.quizIdResult,
        "uid": widget.uid,
        "score": widget.correct.toString(),
      };
      await databaseService.addResultData(quizMap,  widget.quizIdResult).then((val) {
        setState(() {
          _isLoading = false;
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => Ranking(widget.quizIdResult)));
        });
      });
    }
  }


