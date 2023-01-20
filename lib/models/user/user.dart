import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required int id,
    required String username,
    required String email,
    required int mobileNo,
    required int otp,
    required String? image,
    required String? bankName,
    required String? beneficiaryName,
    required String? accountNumber,
    required String? ifscCode,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
