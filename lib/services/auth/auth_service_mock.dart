import 'dart:math';

import 'package:chat/models/user_model.dart';
import 'dart:io';
import 'dart:async';
import 'package:chat/services/auth/auth_service.dart';

class AuthServiceMock implements AuthService {
  static Map<String, UserModel> _users = {};
  static UserModel? _currentUser;
  static MultiStreamController<UserModel?>? _controller;
  static final _userStream = Stream<UserModel?>.multi((controller) {
    _controller = controller;
    _currentUser = null;
    controller.add(_currentUser);
  });

  @override
  UserModel? get currentUser => _currentUser;

  @override
  Stream<UserModel?> get userChanges => _userStream;

  @override
  Future<void> login(String email, String password) async {
    _updateUser(_users[email]);
  }

  @override
  Future<void> logout() async {
    _updateUser(null);
  }

  @override
  Future<void> signUp(
    String name,
    String password,
    String email,
    File image,
  ) async {
    final newUser = UserModel(
      id: Random().nextDouble().toString(),
      name: name,
      email: email,
      imageUrl: image.path,
    );

    _users.putIfAbsent(email, () => newUser);
    _updateUser(newUser);
  }

  static void _updateUser(UserModel? user) {
    _currentUser = user;
    _controller?.add(_currentUser);
  }
}
