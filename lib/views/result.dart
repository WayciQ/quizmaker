import 'package:flutter/material.dart';
import 'package:quizmaker/widgets/widgets.dart';

class Results extends StatefulWidget {
  final int correct, incorrect, total;

  Results(
      {@required this.correct, @required this.incorrect, @required this.total});
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
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
                    Navigator.pop(context);
                  },
                  child: blueButton(
                      context: context,
                      label: "Trở về trang chủ",
                      buttonWidth: MediaQuery.of(context).size.width / 2))
            ],
          ),
        ),
      ),
    );
  }
}
