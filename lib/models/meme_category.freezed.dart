// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meme_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemeCategory _$MemeCategoryFromJson(Map<String, dynamic> json) {
  return _MemeCategory.fromJson(json);
}

/// @nodoc
mixin _$MemeCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemeCategoryCopyWith<MemeCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeCategoryCopyWith<$Res> {
  factory $MemeCategoryCopyWith(
          MemeCategory value, $Res Function(MemeCategory) then) =
      _$MemeCategoryCopyWithImpl<$Res, MemeCategory>;
  @useResult
  $Res call({int id, String title, String? imageUrl});
}

/// @nodoc
class _$MemeCategoryCopyWithImpl<$Res, $Val extends MemeCategory>
    implements $MemeCategoryCopyWith<$Res> {
  _$MemeCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemeCategoryCopyWith<$Res>
    implements $MemeCategoryCopyWith<$Res> {
  factory _$$_MemeCategoryCopyWith(
          _$_MemeCategory value, $Res Function(_$_MemeCategory) then) =
      __$$_MemeCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String? imageUrl});
}

/// @nodoc
class __$$_MemeCategoryCopyWithImpl<$Res>
    extends _$MemeCategoryCopyWithImpl<$Res, _$_MemeCategory>
    implements _$$_MemeCategoryCopyWith<$Res> {
  __$$_MemeCategoryCopyWithImpl(
      _$_MemeCategory _value, $Res Function(_$_MemeCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_MemeCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemeCategory extends _MemeCategory {
  const _$_MemeCategory(
      {required this.id, required this.title, required this.imageUrl})
      : super._();

  factory _$_MemeCategory.fromJson(Map<String, dynamic> json) =>
      _$$_MemeCategoryFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'MemeCategory(id: $id, title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemeCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemeCategoryCopyWith<_$_MemeCategory> get copyWith =>
      __$$_MemeCategoryCopyWithImpl<_$_MemeCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemeCategoryToJson(
      this,
    );
  }
}

abstract class _MemeCategory extends MemeCategory {
  const factory _MemeCategory(
      {required final int id,
      required final String title,
      required final String? imageUrl}) = _$_MemeCategory;
  const _MemeCategory._() : super._();

  factory _MemeCategory.fromJson(Map<String, dynamic> json) =
      _$_MemeCategory.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_MemeCategoryCopyWith<_$_MemeCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
