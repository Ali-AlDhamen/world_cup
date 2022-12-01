import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  const AuthRepository(this._auth);
  final FirebaseAuth _auth;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<User?> signInWithCredentials(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException("User not found");
      } else if (e.code == 'wrong-password') {
        throw AuthException("wrong password");
      }
      throw AuthException(e.message ?? "Something went wrong");
    }
  }

  // Future<User> signUp({String email, String password}) async {
  //   await _auth.createUserWithEmailAndPassword(
  //       email: email, password: password);
  // }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}

class AuthException implements Exception {
  AuthException(this.message);
  final String message;
  @override
  String toString() => message;
}
