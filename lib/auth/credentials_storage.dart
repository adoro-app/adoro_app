import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/user/user.dart';

class CredentialsStorage {
  final FlutterSecureStorage _storage;

  CredentialsStorage(this._storage);

  static const _key = 'auth_token';

  String? _cachedCredentials;
  User? _user;
  Future<String?> read() async {
    if (_cachedCredentials != null) {
      return _cachedCredentials;
    }
    final json = await _storage.read(key: _key);
    if (json == null) {
      return null;
    }
    try {
      return _cachedCredentials = json;
    } on FormatException {
      return null;
    }
  }

  @override
  Future<User?> readUserDetails() async {
    if (_user != null) {
      return _user;
    }
    final json = await _storage.read(key: _key);
    if (json == null) {
      return null;
    }
    try {
      return _user = User.fromJson(jsonDecode(json));
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(String credentials) {
    _cachedCredentials = credentials;
    return _storage.write(
      key: _key,
      value: credentials,
    );
  }

  @override
  Future<void> saveUserDetails(User userDetails) {
    _user = userDetails;
    return _storage.write(
      key: _key,
      value: jsonEncode(userDetails.toJson()),
    );
  }

  Future<void> clear() {
    _cachedCredentials = null;
    return _storage.delete(key: _key);
  }
}
