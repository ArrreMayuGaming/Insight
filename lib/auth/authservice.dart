import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth;
  AuthService(this._firebaseAuth);

  Stream<User> get onAuthStsateChanged => _firebaseAuth.authStateChanges();

  //Create User with some data
  Future<String> signUp({String empmail, String pass}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: empmail, password: pass);
      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //Create User with some data
  Future<String> signIn({String empmail, String pass}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: empmail, password: pass);
      return "Signed in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
