// Paste this inside lib/common/utils/firebase_error_handler.dart
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseErrorHandler {
  // This is a static function so you don't even need to create the class
  static String handleAuthError(FirebaseAuthException e) {
    switch (e.code) {
      // ---> YOU TYPE ALL YOUR CASES HERE! <---
      case 'invalid-email':
        return 'Please enter a valid email address.';
      case 'user-not-found':
      case 'wrong-password':
      case 'invalid-credential':
        return 'Invalid email or password.';
      case 'email-already-in-use':
        return 'This email is already registered. Please sign in.';
      case 'weak-password':
        return 'Your password is too weak. Please use a stronger password.';
      case 'user-disabled':
        return 'This account has been disabled. Please contact support.';
      case 'operation-not-allowed':
        return 'Email/password sign-in is currently disabled. Please contact support.';
      case 'too-many-requests':
        return 'Too many failed login attempts. Please try again later.';
      case 'network-request-failed':
        return 'No internet connection. Please check your network and try again.';

      default:
        // Always return a fallback if it's a completely random error
        return 'An unknown error occurred. Please try again.';
    }
  }
}
