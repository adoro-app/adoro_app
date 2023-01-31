// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_handle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginHandle _$LoginHandleFromJson(Map<String, dynamic> json) {
  return _LoginHandle.fromJson(json);
}

/// @nodoc
mixin _$LoginHandle {
  String get token => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginHandleCopyWith<LoginHandle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginHandleCopyWith<$Res> {
  factory $LoginHandleCopyWith(
          LoginHandle value, $Res Function(LoginHandle) then) =
      _$LoginHandleCopyWithImpl<$Res, LoginHandle>;
  @useResult
  $Res call({String token, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginHandleCopyWithImpl<$Res, $Val extends LoginHandle>
    implements $LoginHandleCopyWith<$Res> {
  _$LoginHandleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginHandleCopyWith<$Res>
    implements $LoginHandleCopyWith<$Res> {
  factory _$$_LoginHandleCopyWith(
          _$_LoginHandle value, $Res Function(_$_LoginHandle) then) =
      __$$_LoginHandleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginHandleCopyWithImpl<$Res>
    extends _$LoginHandleCopyWithImpl<$Res, _$_LoginHandle>
    implements _$$_LoginHandleCopyWith<$Res> {
  __$$_LoginHandleCopyWithImpl(
      _$_LoginHandle _value, $Res Function(_$_LoginHandle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$_LoginHandle(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginHandle extends _LoginHandle {
  const _$_LoginHandle({required this.token, required this.user}) : super._();

  factory _$_LoginHandle.fromJson(Map<String, dynamic> json) =>
      _$$_LoginHandleFromJson(json);

  @override
  final String token;
  @override
  final User user;

  @override
  String toString() {
    return 'LoginHandle(token: $token, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginHandle &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginHandleCopyWith<_$_LoginHandle> get copyWith =>
      __$$_LoginHandleCopyWithImpl<_$_LoginHandle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginHandleToJson(
      this,
    );
  }
}

abstract class _LoginHandle extends LoginHandle {
  const factory _LoginHandle(
      {required final String token, required final User user}) = _$_LoginHandle;
  const _LoginHandle._() : super._();

  factory _LoginHandle.fromJson(Map<String, dynamic> json) =
      _$_LoginHandle.fromJson;

  @override
  String get token;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_LoginHandleCopyWith<_$_LoginHandle> get copyWith =>
      throw _privateConstructorUsedError;
}
