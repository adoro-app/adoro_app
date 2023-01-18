import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_error.freezed.dart';

@freezed
class AuthError with _$AuthError {
  const AuthError._();
  const factory AuthError.userNotRegistered({
    required String message,
  }) = _UserNotRegistered;
  const factory AuthError.unknown({
    @Default('Something went wrong!') String message,
  }) = _Unknown;
}
