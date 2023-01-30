import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialv/models/user/user.dart';
part 'login_handle.freezed.dart';
part 'login_handle.g.dart';

@freezed
class LoginHandle with _$LoginHandle {
  const LoginHandle._();
  const factory LoginHandle({
    required String token,
    required User user,
  }) = _LoginHandle;

  factory LoginHandle.fromJson(Map<String, dynamic> json) =>
      _$LoginHandleFromJson(json);
}
