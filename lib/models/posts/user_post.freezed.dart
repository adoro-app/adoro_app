// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPost _$UserPostFromJson(Map<String, dynamic> json) {
  return _UserPost.fromJson(json);
}

/// @nodoc
mixin _$UserPost {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get content_type => throw _privateConstructorUsedError;
  String get content_url => throw _privateConstructorUsedError;
  String get created_on => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPostCopyWith<UserPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostCopyWith<$Res> {
  factory $UserPostCopyWith(UserPost value, $Res Function(UserPost) then) =
      _$UserPostCopyWithImpl<$Res, UserPost>;
  @useResult
  $Res call(
      {int id,
      String content,
      String content_type,
      String content_url,
      String created_on});
}

/// @nodoc
class _$UserPostCopyWithImpl<$Res, $Val extends UserPost>
    implements $UserPostCopyWith<$Res> {
  _$UserPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? content_type = null,
    Object? content_url = null,
    Object? created_on = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      content_type: null == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as String,
      content_url: null == content_url
          ? _value.content_url
          : content_url // ignore: cast_nullable_to_non_nullable
              as String,
      created_on: null == created_on
          ? _value.created_on
          : created_on // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPostCopyWith<$Res> implements $UserPostCopyWith<$Res> {
  factory _$$_UserPostCopyWith(
          _$_UserPost value, $Res Function(_$_UserPost) then) =
      __$$_UserPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String content,
      String content_type,
      String content_url,
      String created_on});
}

/// @nodoc
class __$$_UserPostCopyWithImpl<$Res>
    extends _$UserPostCopyWithImpl<$Res, _$_UserPost>
    implements _$$_UserPostCopyWith<$Res> {
  __$$_UserPostCopyWithImpl(
      _$_UserPost _value, $Res Function(_$_UserPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? content_type = null,
    Object? content_url = null,
    Object? created_on = null,
  }) {
    return _then(_$_UserPost(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      content_type: null == content_type
          ? _value.content_type
          : content_type // ignore: cast_nullable_to_non_nullable
              as String,
      content_url: null == content_url
          ? _value.content_url
          : content_url // ignore: cast_nullable_to_non_nullable
              as String,
      created_on: null == created_on
          ? _value.created_on
          : created_on // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPost extends _UserPost {
  const _$_UserPost(
      {required this.id,
      required this.content,
      required this.content_type,
      required this.content_url,
      required this.created_on})
      : super._();

  factory _$_UserPost.fromJson(Map<String, dynamic> json) =>
      _$$_UserPostFromJson(json);

  @override
  final int id;
  @override
  final String content;
  @override
  final String content_type;
  @override
  final String content_url;
  @override
  final String created_on;

  @override
  String toString() {
    return 'UserPost(id: $id, content: $content, content_type: $content_type, content_url: $content_url, created_on: $created_on)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPost &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.content_type, content_type) ||
                other.content_type == content_type) &&
            (identical(other.content_url, content_url) ||
                other.content_url == content_url) &&
            (identical(other.created_on, created_on) ||
                other.created_on == created_on));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, content, content_type, content_url, created_on);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPostCopyWith<_$_UserPost> get copyWith =>
      __$$_UserPostCopyWithImpl<_$_UserPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPostToJson(
      this,
    );
  }
}

abstract class _UserPost extends UserPost {
  const factory _UserPost(
      {required final int id,
      required final String content,
      required final String content_type,
      required final String content_url,
      required final String created_on}) = _$_UserPost;
  const _UserPost._() : super._();

  factory _UserPost.fromJson(Map<String, dynamic> json) = _$_UserPost.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  String get content_type;
  @override
  String get content_url;
  @override
  String get created_on;
  @override
  @JsonKey(ignore: true)
  _$$_UserPostCopyWith<_$_UserPost> get copyWith =>
      throw _privateConstructorUsedError;
}
