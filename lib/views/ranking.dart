import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quizmaker/Models/rankbyquiz.dart';
import 'package:quizmaker/helpers/svg/svg.dart';
import 'package:quizmaker/services/database.dart';
import 'package:quizmaker/views/Ranking//generated/GeneratedGroup41Widget.dart';
import 'package:quizmaker/views/Ranking//generated/GeneratedGroup40Widget.dart';
import 'package:quizmaker/views/Ranking//generated/Rank1.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedGroup14Widget4.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedGroup4Widget4.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedRANKINGWidget.dart';
import 'package:quizmaker/views/Ranking/generated/GeneratedGroup42Widget.dart';
import 'package:quizmaker/views/Ranking/generated/Rank1.dart';
import 'package:quizmaker/widgets/widgets.dart';

class Ranking extends StatefulWidget {

  final String quizId;
  Ranking(this.quizId);
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Ranking> {
  DatabaseService databaseService = new DatabaseService();
  // ignore: non_constant_identifier_names
  QuerySnapshot RankingSnapshot;
  DocumentSnapshot documentSnapshot1,documentSnapshot2,documentSnapshot3,documentSnapshot4;
  Map<String, String> dataRank1;
  Map<String, String> dataRank2;
  Map<String, String> dataRank3;
  Map<String, String> dataRank4;
  String a;
  @override
  void initState() {
    getList();
    super.initState();
  }
  void getList(){
    // databaseService.getResultData(widget.quizId).then((val) {
    //   RankingSnapshot = val;
    //   print(RankingSnapshot.documents[0].data["uid"].toString());
    //   print(RankingSnapshot.documents[0].data["score"].toString());
    //   databaseService.getUserData(RankingSnapshot.documents[0].data["uid"]).then((val1) {
    //     documentSnapshot1 = val1;
    //     a = documentSnapshot1.data["name"];
    //   });
    //   print(a);
    //   databaseService.getUserData(RankingSnapshot.documents[1].data["uid"]).then((val2) {
    //     documentSnapshot2 = val2;
    //   });
    //   databaseService.getUserData(RankingSnapshot.documents[2].data["uid"]).then((val3) {
    //     documentSnapshot3 = val3;
    //   });
    //   databaseService.getUserData(RankingSnapshot.documents[3].data["uid"]).then((val4) {
    //     documentSnapshot4 = val4;
    //   });
    // });
  }
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
                  child: Rank1(),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Rank2(),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Rank3(),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Rank4(),
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
  Widget Rank1() {
    return Container(
      width: 355.0,
      height: 95.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 7.0,
              top: 19.0,
              right: null,
              bottom: null,
              width: 348.0,
              height: 56.0,
              child: Container(
                width: 348.0,
                height: 56.0,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      // hình chữ nhật + số thứ tự xếp hạng
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 348.0,
                        height: 56.0,
                        child: Container(
                          width: 348.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              color: Color.fromARGB(255, 244, 215, 61),
                            ),
                          ),
                        ),
                      ),
                      // tên
                      Positioned(
                        left: 109.0,
                        top: 18.0,
                        right: null,
                        bottom: null,
                        width: 144.0,
                        height: 23.0,
                        child:  Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Quang cuốn",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 20.0,
                              fontFamily: 'Berlin Sans FB Demi Bold',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                      ),
                      // điểm + hình tròn
                      Positioned(
                          left: 281.0,
                          top: 5.0,
                          right: null,
                          bottom: null,
                          width: 46.0,
                          height: 46.0,
                          child: Container(
                            width: 46.0,
                            height: 46.0,
                            child: Stack(
                                fit: StackFit.expand,
                                alignment: Alignment.center,
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    left: 0.0,
                                    top: 0.0,
                                    right: null,
                                    bottom: null,
                                    width: 46.0,
                                    height: 46.0,
                                    child: Container(
                                      width: 46.0,
                                      height: 46.0,
                                      child: SvgWidget(painters: [
                                        SvgPathPainter.fill()
                                          ..addPath(
                                              'M46 23C46 35.7025 35.7025 46 23 46C10.2975 46 0 35.7025 0 23C0 10.2975 10.2975 0 23 0C35.7025 0 46 10.2975 46 23Z')
                                          ..color = Color.fromARGB(255, 255, 255, 255),
                                      ]),
                                    ),
                                  ),
                                  Positioned(
                                      left: 4.0,
                                      top: 6.0,
                                      right: null,
                                      bottom: null,
                                      width: 38.0,
                                      height: 34.0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "25",
                                          overflow: TextOverflow.visible,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.171875,
                                            fontSize: 25.0,
                                            fontFamily: 'Berlin Sans FB Demi Bold',
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(255, 139, 202, 141),

                                            /* letterSpacing: 0.0, */
                                          ),
                                        ),
                                      )
                                  )
                                ]),
                          )
                      )
                    ]),
              ),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 95.0,
              height: 95.0,
              child: Container(
                width: 95.0,
                height: 95.0,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 95.0,
                        height: 95.0,
                        child: Container(
                          width: 95.0,
                          height: 95.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              color: Color.fromARGB(255, 244, 215, 61),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27.0,
                        top: 27.0,
                        right: null,
                        bottom: null,
                        width: 43.0,
                        height: 46.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '''1''',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 40.0,
                              fontFamily: 'Berlin Sans FB Demi Bold',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            )
          ]),
    );
  }
  Widget Rank2() {
    return Container(
      width: 355.0,
      height: 95.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 7.0,
              top: 19.0,
              right: null,
              bottom: null,
              width: 348.0,
              height: 56.0,
              child: Container(
                width: 348.0,
                height: 56.0,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      // hình chữ nhật + số thứ tự xếp hạng
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 348.0,
                        height: 56.0,
                        child: Container(
                          width: 348.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              color: Color.fromARGB(255, 38, 152, 243),
                            ),
                          ),
                        ),
                      ),
                      // tên
                      Positioned(
                        left: 109.0,
                        top: 18.0,
                        right: null,
                        bottom: null,
                        width: 144.0,
                        height: 23.0,
                        child:  Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Trung tồ",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 20.0,
                              fontFamily: 'Berlin Sans FB Demi Bold',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                      ),
                      // điểm + hình tròn
                      Positioned(
                          left: 281.0,
                          top: 5.0,
                          right: null,
                          bottom: null,
                          width: 46.0,
                          height: 46.0,
                          child: Container(
                            width: 46.0,
                            height: 46.0,
                            child: Stack(
                                fit: StackFit.expand,
                                alignment: Alignment.center,
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    left: 0.0,
                                    top: 0.0,
                                    right: null,
                                    bottom: null,
                                    width: 46.0,
                                    height: 46.0,
                                    child: Container(
                                      width: 46.0,
                                      height: 46.0,
                                      child: SvgWidget(painters: [
                                        SvgPathPainter.fill()
                                          ..addPath(
                                              'M46 23C46 35.7025 35.7025 46 23 46C10.2975 46 0 35.7025 0 23C0 10.2975 10.2975 0 23 0C35.7025 0 46 10.2975 46 23Z')
                                          ..color = Color.fromARGB(255, 255, 255, 255),
                                      ]),
                                    ),
                                  ),
                                  Positioned(
                                      left: 4.0,
                                      top: 6.0,
                                      right: null,
                                      bottom: null,
                                      width: 38.0,
                                      height: 34.0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "21",
                                          overflow: TextOverflow.visible,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.171875,
                                            fontSize: 25.0,
                                            fontFamily: 'Berlin Sans FB Demi Bold',
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(255, 139, 202, 141),

                                            /* letterSpacing: 0.0, */
                                          ),
                                        ),
                                      )
                                  )
                                ]),
                          )
                      )
                    ]),
              ),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 95.0,
              height: 95.0,
              child: Container(
                width: 95.0,
                height: 95.0,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 95.0,
                        height: 95.0,
                        child: Container(
                          width: 95.0,
                          height: 95.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              color: Color.fromARGB(255, 38, 152, 243),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27.0,
                        top: 27.0,
                        right: null,
                        bottom: null,
                        width: 43.0,
                        height: 46.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "2",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 40.0,
                              fontFamily: 'Berlin Sans FB Demi Bold',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            )
          ]),
    );
  }
  Widget Rank3() {
    return Container(
      width: 355.0,
      height: 95.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 7.0,
              top: 19.0,
              right: null,
              bottom: null,
              width: 348.0,
              height: 56.0,
              child: Container(
                width: 348.0,
                height: 56.0,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      // hình chữ nhật + số thứ tự xếp hạng
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 348.0,
                        height: 56.0,
                        child: Container(
                          width: 348.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              color: Color.fromARGB(255, 139, 202, 141)
                            ),
                          ),
                        ),
                      ),
                      // tên
                      Positioned(
                        left: 109.0,
                        top: 18.0,
                        right: null,
                        bottom: null,
                        width: 144.0,
                        height: 23.0,
                        child:  Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Thiện xoài",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 20.0,
                              fontFamily: 'Berlin Sans FB Demi Bold',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                      ),
                      // điểm + hình tròn
                      Positioned(
                          left: 281.0,
                          top: 5.0,
                          right: null,
                          bottom: null,
                          width: 46.0,
                          height: 46.0,
                          child: Container(
                            width: 46.0,
                            height: 46.0,
                            child: Stack(
                                fit: StackFit.expand,
                                alignment: Alignment.center,
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    left: 0.0,
                                    top: 0.0,
                                    right: null,
                                    bottom: null,
                                    width: 46.0,
                                    height: 46.0,
                                    child: Container(
                                      width: 46.0,
                                      height: 46.0,
                                      child: SvgWidget(painters: [
                                        SvgPathPainter.fill()
                                          ..addPath(
                                              'M46 23C46 35.7025 35.7025 46 23 46C10.2975 46 0 35.7025 0 23C0 10.2975 10.2975 0 23 0C35.7025 0 46 10.2975 46 23Z')
                                          ..color = Color.fromARGB(255, 255, 255, 255),
                                      ]),
                                    ),
                                  ),
                                  Positioned(
                                      left: 4.0,
                                      top: 6.0,
                                      right: null,
                                      bottom: null,
                                      width: 38.0,
                                      height: 34.0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "14",
                                          overflow: TextOverflow.visible,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.171875,
                                            fontSize: 25.0,
                                            fontFamily: 'Berlin Sans FB Demi Bold',
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(255, 139, 202, 141),

                                            /* letterSpacing: 0.0, */
                                          ),
                                        ),
                                      )
                                  )
                                ]),
                          )
                      )
                    ]),
              ),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 95.0,
              height: 95.0,
              child: Container(
                width: 95.0,
                height: 95.0,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 95.0,
                        height: 95.0,
                        child: Container(
                          width: 95.0,
                          height: 95.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              color: Color.fromARGB(255, 139, 202, 141)
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27.0,
                        top: 27.0,
                        right: null,
                        bottom: null,
                        width: 43.0,
                        height: 46.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "3",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 40.0,
                              fontFamily: 'Berlin Sans FB Demi Bold',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            )
          ]),
    );
  }
  Widget Rank4() {
    return Container(
      width: 355.0,
      height: 95.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 7.0,
              top: 19.0,
              right: null,
              bottom: null,
              width: 348.0,
              height: 56.0,
              child: Container(
                width: 348.0,
                height: 56.0,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      // hình chữ nhật + số thứ tự xếp hạng
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 348.0,
                        height: 56.0,
                        child: Container(
                          width: 348.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              color: Color.fromARGB(255, 117, 117, 117),
                            ),
                          ),
                        ),
                      ),
                      // tên
                      Positioned(
                        left: 109.0,
                        top: 18.0,
                        right: null,
                        bottom: null,
                        width: 144.0,
                        height: 23.0,
                        child:  Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Lân đận",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 20.0,
                              fontFamily: 'Berlin Sans FB Demi Bold',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                      ),
                      // điểm + hình tròn
                      Positioned(
                          left: 281.0,
                          top: 5.0,
                          right: null,
                          bottom: null,
                          width: 46.0,
                          height: 46.0,
                          child: Container(
                            width: 46.0,
                            height: 46.0,
                            child: Stack(
                                fit: StackFit.expand,
                                alignment: Alignment.center,
                                overflow: Overflow.visible,
                                children: [
                                  Positioned(
                                    left: 0.0,
                                    top: 0.0,
                                    right: null,
                                    bottom: null,
                                    width: 46.0,
                                    height: 46.0,
                                    child: Container(
                                      width: 46.0,
                                      height: 46.0,
                                      child: SvgWidget(painters: [
                                        SvgPathPainter.fill()
                                          ..addPath(
                                              'M46 23C46 35.7025 35.7025 46 23 46C10.2975 46 0 35.7025 0 23C0 10.2975 10.2975 0 23 0C35.7025 0 46 10.2975 46 23Z')
                                          ..color = Color.fromARGB(255, 255, 255, 255),
                                      ]),
                                    ),
                                  ),
                                  Positioned(
                                      left: 4.0,
                                      top: 6.0,
                                      right: null,
                                      bottom: null,
                                      width: 38.0,
                                      height: 34.0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "10",
                                          overflow: TextOverflow.visible,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.171875,
                                            fontSize: 25.0,
                                            fontFamily: 'Berlin Sans FB Demi Bold',
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(255, 139, 202, 141),

                                            /* letterSpacing: 0.0, */
                                          ),
                                        ),
                                      )
                                  )
                                ]),
                          )
                      )
                    ]),
              ),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 95.0,
              height: 95.0,
              child: Container(
                width: 95.0,
                height: 95.0,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: null,
                        bottom: null,
                        width: 95.0,
                        height: 95.0,
                        child: Container(
                          width: 95.0,
                          height: 95.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                              color: Color.fromARGB(255, 117, 117, 117),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27.0,
                        top: 27.0,
                        right: null,
                        bottom: null,
                        width: 43.0,
                        height: 46.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "4",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.171875,
                              fontSize: 40.0,
                              fontFamily: 'Berlin Sans FB Demi Bold',
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                              /* letterSpacing: 0.0, */
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            )
          ]),
    );
  }
}
