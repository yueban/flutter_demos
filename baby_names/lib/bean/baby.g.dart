// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baby.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Baby _$BabyFromJson(Map<String, dynamic> json) {
  return Baby(name: json['name'] as String, votes: json['votes'] as int)
    ..createdAt = json['createdAt'] as String
    ..updatedAt = json['updatedAt'] as String
    ..objectId = json['objectId'] as String
    ..ACL = json['ACL'] as Map<String, dynamic>;
}

Map<String, dynamic> _$BabyToJson(Baby instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'objectId': instance.objectId,
      'ACL': instance.ACL,
      'name': instance.name,
      'votes': instance.votes
    };
