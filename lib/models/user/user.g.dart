// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      mobileNo: json['mobileNo'] as String,
      otp: json['otp'] as int,
      image: json['image'] as String?,
      cover_photo: json['cover_photo'] as String?,
      bankName: json['bankName'] as String?,
      beneficiaryName: json['beneficiaryName'] as String?,
      accountNumber: json['accountNumber'] as String?,
      ifscCode: json['ifscCode'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'mobileNo': instance.mobileNo,
      'otp': instance.otp,
      'image': instance.image,
      'cover_photo': instance.cover_photo,
      'bankName': instance.bankName,
      'beneficiaryName': instance.beneficiaryName,
      'accountNumber': instance.accountNumber,
      'ifscCode': instance.ifscCode,
    };
