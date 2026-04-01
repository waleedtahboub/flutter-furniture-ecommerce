import 'package:firebase_auth/firebase_auth.dart';
export 'auth_repo_implementation.dart' show authRepoProvider;
abstract class AuthRepo {
  Future<UserCredential> signUp(String email, String password, String username);

  Future<UserCredential> signIn(String email, String password);
}
