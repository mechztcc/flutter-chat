import 'package:chat/models/user_model.dart';
import 'dart:io';

import 'package:chat/services/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFireBaseService implements AuthService {
  @override
  // TODO: implement currentUser
  UserModel? get currentUser => throw UnimplementedError();

  @override
  Future<void> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() async {
    FirebaseAuth.instance.signOut();
  }

  @override
  Future<void> signUp(
    String name,
    String password,
    String email,
    File? image,
  ) async {
    final auth = FirebaseAuth.instance;

    UserCredential credencial = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    if(credencial.user != null) {
      credencial.user?.updateDisplayName(name);
      // credencial.user?.updatePhotoURL(photoURL);
    }
  }

  @override
  // TODO: implement userChanges
  Stream<UserModel?> get userChanges => throw UnimplementedError();
}
