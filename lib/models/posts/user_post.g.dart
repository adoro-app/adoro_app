// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPost _$$_UserPostFromJson(Map<String, dynamic> json) => _$_UserPost(
      id: json['id'] as int,
      content: json['content'] as String,
      content_type: json['content_type'] as String,
      content_url: json['content_url'] as String,
      created_on: json['created_on'] as String,
    );

Map<String, dynamic> _$$_UserPostToJson(_$_UserPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'content_type': instance.content_type,
      'content_url': instance.content_url,
      'created_on': instance.created_on,
    };
