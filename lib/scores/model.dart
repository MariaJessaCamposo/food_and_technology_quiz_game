import 'package:cloud_firestore/cloud_firestore.dart';

class SaveScores {
  String id;
  String name;
  final String score;


  SaveScores({
    this.id = '',
    this.name = '',
    required this.score,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'score': score
  };

  factory SaveScores.fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) {
    // final map = doc.data();
    return SaveScores(
      id: doc.data()!['id'],
      name: doc.data()!['name'],
      score: doc.data()!['score'],
    );
  }
}

