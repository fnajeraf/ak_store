import 'package:ak_store_app/login/repository/firebase_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuthRepository();
  Future<FirebaseUser> singInFirebase() => _firebaseAuth.signIn();
  Future<void> singOut() => _firebaseAuth.singOut();
}
