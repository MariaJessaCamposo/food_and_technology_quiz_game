//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:quiz_app/screens/welcome/user_model.dart';
//
// class AuthService{
//   final FirebaseAuth _auth;
//
//   AuthService(this._auth);
//
//   Future<Stream> get authStateChanges async => _auth.idTokenChanges();
//
//   Future<Object> login(String email, password) async {
//     try{
//       await _auth.signInWithEmailAndPassword(email: email, password: password);
//       return "Logged In";
//     } catch(e){
//       return e;
//     }
//   }
//
//   Future<Object> signUp(String email, String password, String role, String username) async {
//     try{
//       await _auth.createUserWithEmailAndPassword(email: email, password: password).then((value) async{
//         User? user = FirebaseAuth.instance.currentUser;
//
//         await FirebaseFirestore.instance.collection("users").doc(user?.uid).set((
//         'uid' : user.uid,
//         'username' : username,
//         'email' : email,
//         'password' : password,
//             'role' : role
//         ));
//       });
//       return "Signed Up";
//     } catch(e){
//       return e;
//     }
//   }
//
//
// }