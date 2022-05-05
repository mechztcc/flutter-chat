import 'dart:io';

import 'package:chat/models/user_model.dart';
import 'package:chat/services/auth/auth_service_mock.dart';

abstract class AuthService {
  UserModel? get currentUser;

  Stream<UserModel?> get userChanges; 

  Future<void> signUp(
    String name,
    String password,
    String email,
    File? image,
  );

  Future<void> login(
    String email,
    String password,
  );

  Future<void> logout();

  factory AuthService() {
    return AuthServiceMock();
  }
}
