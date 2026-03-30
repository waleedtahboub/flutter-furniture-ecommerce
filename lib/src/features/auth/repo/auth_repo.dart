import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthRepo {
  AuthRepo(this._auth);
  final FirebaseAuth _auth;

  Future<UserCredential> signUp(
    String email,
    String password,
    String username,
  ) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      throw e.message ?? 'An unknown error occurred  during  sign up.';
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }
}

final authRepoProvider = Provider<AuthRepo>((ref) {
  return AuthRepo(FirebaseAuth.instance);
});
