import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  String id;
  final String username;


  Users({
    this.id = '',

    required this.username,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'username': username,
  };

  factory Users.fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) {
    // final map = doc.data();
    return Users(
      id: doc.data()!['id'],
      username: doc.data()!['username'],
    );
  }
}

// List<Object?> get props => [
//   id,
//   date_reg,
//   fname,
//   birthday,
//   gender,
//   age,
//   address,
//   contact
//
// ];
