import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_store_app/common/utils/firebase_error_handler.dart';
import 'package:furniture_store_app/src/features/auth/repo/auth_repo.dart';
import 'package:furniture_store_app/common/models/user_model/user_model.dart';

class AuthRepoImplementation implements AuthRepo {
  AuthRepoImplementation(this._auth, this._firestore);
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
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

      if (credential.user != null) {
        final newUser = UserModel(
          email: email,
          uid: credential.user!.uid,
          username: username,
        );

        final userJson = newUser.toJson();
        userJson['createdAt'] = FieldValue.serverTimestamp();

        await _firestore.collection('users').doc(newUser.uid).set(userJson);
      }
      return credential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseErrorHandler.handleAuthError(e);
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
      throw FirebaseErrorHandler.handleAuthError(e);
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      throw FirebaseErrorHandler.handleAuthError(e);
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }
}

final authRepoProvider = Provider<AuthRepo>((ref) {
  return AuthRepoImplementation(
    FirebaseAuth.instance,
    FirebaseFirestore.instance,
  );
});
final userProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});
