// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_handle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginHandle _$$_LoginHandleFromJson(Map<String, dynamic> json) =>
    _$_LoginHandle(
      token: json['token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginHandleToJson(_$_LoginHandle instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
