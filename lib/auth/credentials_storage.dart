import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/user/login_handle.dart';
import '../models/user/user.dart';

class CredentialsStorage {
  final FlutterSecureStorage _storage;

  CredentialsStorage(this._storage);

  static const _key = 'auth_token';

  LoginHandle? _cachedCredentials;

  Future<LoginHandle?> read() async {
    if (_cachedCredentials != null) {
      return _cachedCredentials;
    }
    final json = await _storage.read(key: _key);
    if (json == null) {
      return null;
    }
    try {
      return _cachedCredentials = LoginHandle.fromJson(jsonDecode(json));
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(LoginHandle credentials) {
    _cachedCredentials = credentials;
    return _storage.write(
      key: _key,
      value: jsonEncode(credentials.toJson()),
    );
  }

  Future<void> clear() {
    _cachedCredentials = null;
    return _storage.delete(key: _key);
  }
}
