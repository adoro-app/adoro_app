// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  File? get selectedImage => throw _privateConstructorUsedError;
  Either<Exception, Unit>? get successOrFailure =>
      throw _privateConstructorUsedError;
  List<UserPost> get userPosts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      bool loading,
      File? selectedImage,
      Either<Exception, Unit>? successOrFailure,
      List<UserPost> userPosts});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? loading = null,
    Object? selectedImage = freezed,
    Object? successOrFailure = freezed,
    Object? userPosts = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedImage: freezed == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as File?,
      successOrFailure: freezed == successOrFailure
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Exception, Unit>?,
      userPosts: null == userPosts
          ? _value.userPosts
          : userPosts // ignore: cast_nullable_to_non_nullable
              as List<UserPost>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      bool loading,
      File? selectedImage,
      Either<Exception, Unit>? successOrFailure,
      List<UserPost> userPosts});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? loading = null,
    Object? selectedImage = freezed,
    Object? successOrFailure = freezed,
    Object? userPosts = null,
  }) {
    return _then(_$_ProfileState(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedImage: freezed == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as File?,
      successOrFailure: freezed == successOrFailure
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<Exception, Unit>?,
      userPosts: null == userPosts
          ? _value._userPosts
          : userPosts // ignore: cast_nullable_to_non_nullable
              as List<UserPost>,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.isSubmitting,
      required this.loading,
      this.selectedImage,
      this.successOrFailure,
      required final List<UserPost> userPosts})
      : _userPosts = userPosts;

  @override
  final bool isSubmitting;
  @override
  final bool loading;
  @override
  final File? selectedImage;
  @override
  final Either<Exception, Unit>? successOrFailure;
  final List<UserPost> _userPosts;
  @override
  List<UserPost> get userPosts {
    if (_userPosts is EqualUnmodifiableListView) return _userPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userPosts);
  }

  @override
  String toString() {
    return 'ProfileState(isSubmitting: $isSubmitting, loading: $loading, selectedImage: $selectedImage, successOrFailure: $successOrFailure, userPosts: $userPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.selectedImage, selectedImage) ||
                other.selectedImage == selectedImage) &&
            (identical(other.successOrFailure, successOrFailure) ||
                other.successOrFailure == successOrFailure) &&
            const DeepCollectionEquality()
                .equals(other._userPosts, _userPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubmitting,
      loading,
      selectedImage,
      successOrFailure,
      const DeepCollectionEquality().hash(_userPosts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final bool isSubmitting,
      required final bool loading,
      final File? selectedImage,
      final Either<Exception, Unit>? successOrFailure,
      required final List<UserPost> userPosts}) = _$_ProfileState;

  @override
  bool get isSubmitting;
  @override
  bool get loading;
  @override
  File? get selectedImage;
  @override
  Either<Exception, Unit>? get successOrFailure;
  @override
  List<UserPost> get userPosts;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
