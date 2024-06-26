// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteDtoImpl _$$NoteDtoImplFromJson(Map<String, dynamic> json) =>
    _$NoteDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      color: (json['color'] as num).toInt(),
    );

Map<String, dynamic> _$$NoteDtoImplToJson(_$NoteDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'color': instance.color,
    };
