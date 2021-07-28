import 'package:ak_store_app/login/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {

  final AuthRepository _authRepository = AuthRepository();
  Stream<FirebaseUser> get authStatus => FirebaseAuth.instance.onAuthStateChanged;

  Future<FirebaseUser> signIn() {
    return _authRepository.singInFirebase();
  }

  Future<void> signOut () async {
    _authRepository.singOut();
  }
}
