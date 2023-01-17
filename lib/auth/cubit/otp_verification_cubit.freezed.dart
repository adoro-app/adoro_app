// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpVerificationState {
  int get secondsLeft => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpVerificationStateCopyWith<OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationStateCopyWith<$Res> {
  factory $OtpVerificationStateCopyWith(OtpVerificationState value,
          $Res Function(OtpVerificationState) then) =
      _$OtpVerificationStateCopyWithImpl<$Res, OtpVerificationState>;
  @useResult
  $Res call({int secondsLeft});
}

/// @nodoc
class _$OtpVerificationStateCopyWithImpl<$Res,
        $Val extends OtpVerificationState>
    implements $OtpVerificationStateCopyWith<$Res> {
  _$OtpVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secondsLeft = null,
  }) {
    return _then(_value.copyWith(
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtpVerificationStateCopyWith<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  factory _$$_OtpVerificationStateCopyWith(_$_OtpVerificationState value,
          $Res Function(_$_OtpVerificationState) then) =
      __$$_OtpVerificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int secondsLeft});
}

/// @nodoc
class __$$_OtpVerificationStateCopyWithImpl<$Res>
    extends _$OtpVerificationStateCopyWithImpl<$Res, _$_OtpVerificationState>
    implements _$$_OtpVerificationStateCopyWith<$Res> {
  __$$_OtpVerificationStateCopyWithImpl(_$_OtpVerificationState _value,
      $Res Function(_$_OtpVerificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secondsLeft = null,
  }) {
    return _then(_$_OtpVerificationState(
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OtpVerificationState implements _OtpVerificationState {
  const _$_OtpVerificationState({required this.secondsLeft});

  @override
  final int secondsLeft;

  @override
  String toString() {
    return 'OtpVerificationState(secondsLeft: $secondsLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpVerificationState &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, secondsLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpVerificationStateCopyWith<_$_OtpVerificationState> get copyWith =>
      __$$_OtpVerificationStateCopyWithImpl<_$_OtpVerificationState>(
          this, _$identity);
}

abstract class _OtpVerificationState implements OtpVerificationState {
  const factory _OtpVerificationState({required final int secondsLeft}) =
      _$_OtpVerificationState;

  @override
  int get secondsLeft;
  @override
  @JsonKey(ignore: true)
  _$$_OtpVerificationStateCopyWith<_$_OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
