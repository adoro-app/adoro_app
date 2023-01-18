import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CredentialsStorage {
  final FlutterSecureStorage _storage;

  CredentialsStorage(this._storage);

  static const _key = 'auth_token';

  String? _cachedCredentials;

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
  Future<void> save(String credentials) {
    _cachedCredentials = credentials;
    return _storage.write(
      key: _key,
      value: credentials,
    );
  }

  Future<void> clear() {
    _cachedCredentials = null;
    return _storage.delete(key: _key);
  }
}
