import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/scores/model.dart';
import 'package:quiz_app/screens/welcome/user_model.dart';

class ScoresViewModel extends ChangeNotifier{
  // TextEditingController username = TextEditingController();
  // TextEditingController email = TextEditingController();
  // TextEditingController password = TextEditingController();

  Future saveScore({required String name, score} ) async {
    //Reference to document
    final docUser = FirebaseFirestore.instance.collection('categories').doc();

    final category = SaveScores(
      id: docUser.id,
      name: name,
      score: score
    );
    final json = category.toJson();
    //Create document and write to firebase
    await docUser.set(json);
    // print(json);
  }

}