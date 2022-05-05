


import 'package:chat/models/user_model.dart';
import 'dart:io';

import 'package:chat/services/auth/auth_service.dart';

class AuthServiceMock implements AuthService {
  @override
  // TODO: implement currentUser
  UserModel? get currentUser => throw UnimplementedError();

  @override
  Future<void> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(String name, String password, String email, File image) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  // TODO: implement userChanges
  Stream<UserModel>? get userChanges => throw UnimplementedError();
}