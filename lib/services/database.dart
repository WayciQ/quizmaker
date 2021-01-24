import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: non_constant_identifier_names


class DatabaseService
 {
  Future<void> addQuizData(Map quizData, String quizId) async {
    await Firestore.instance
        .collection("Quiz")
        .document(quizId)
        .setData(quizData)
        .catchError((e) {
      print(e.toString());
    });
  }
  Future<void> addUser(Map UserData, String uid) async {
    await Firestore.instance
        .collection("Users").document(uid)
        .setData(UserData)
        .catchError((e) {
      print(e.toString());
    });
  }
  Future<void> addQuestionData(Map questionData, String quizId) async {
    await Firestore.instance
        .collection("Quiz")
        .document(quizId)
        .collection("QNA")
        .add(questionData)
        .catchError((e) {
      print(e.toString());
    });
  }

  getQuizezData() async {
    return await Firestore.instance.collection("Quiz").snapshots();
  }
  getCollection(QuerySnapshot snapshot) {
    List<Map<dynamic, dynamic>> list = new List();
    list = snapshot.documents.map((DocumentSnapshot docSnapshot){
      return docSnapshot.data;
    }).toList();
    return list;
  }
  getQuizData(String quizId) async {
    return await Firestore.instance
        .collection("Quiz")
        .document(quizId)
        .collection("QNA")
        .getDocuments();
  }
  Future<void> addResultData(Map resultData,String quizId) async {
    await Firestore.instance
        .collection("Rank")
        .document(quizId)
        .collection("QuizResult")
        .add(resultData).catchError((e) {
      print(e.toString());
    });
  }

  getResultData(String quizId) async {
    return await Firestore.instance.collection("Rank")
        .document(quizId)
        .collection("QuizResult")
        .orderBy("score",descending: true)
        .limit(4)
        .getDocuments();
  }
  getUserData(String uid) async {
    return await Firestore.instance.collection("Users").document(uid).get();
  }
}
