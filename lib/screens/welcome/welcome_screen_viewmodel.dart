import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/welcome/user_model.dart';

class WelcomeScreenViewModel extends ChangeNotifier{
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future createUser({required String username} ) async {
    //Reference to document
    final docUser = FirebaseFirestore.instance.collection('users').doc();

    final user = Users(
        id: docUser.id,
        username: username,
    );
    final json = user.toJson();
    //Create document and write to firebase
    await docUser.set(json);
    // print(json);
  }

}