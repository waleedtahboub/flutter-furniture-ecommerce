import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/src/features/auth/repo/auth_repo.dart';

class AuthRepoImplementation implements AuthRepo {
  AuthRepoImplementation(this._auth);
  final FirebaseAuth _auth;
  @override
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

  @override
  Future<UserCredential> signIn(String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
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
  return AuthRepoImplementation(FirebaseAuth.instance);
});
