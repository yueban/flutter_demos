// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmobconfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BmobConfig _$BmobConfigFromJson(Map<String, dynamic> json) {
  return BmobConfig(
      applicationId: json['application_id'] as String,
      restApiKey: json['rest_api_key'] as String,
      secretKey: json['secret_key'] as String,
      masterKey: json['master_key'] as String);
}

Map<String, dynamic> _$BmobConfigToJson(BmobConfig instance) =>
    <String, dynamic>{
      'application_id': instance.applicationId,
      'rest_api_key': instance.restApiKey,
      'secret_key': instance.secretKey,
      'master_key': instance.masterKey
    };
