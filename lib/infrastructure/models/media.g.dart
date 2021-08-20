// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      json['Categorie'] as int?,
      json['ContentType'] as int?,
      (json['MediaItems'] as List<dynamic>?)
              ?.map((e) => MediaItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'Categorie': instance.categorie,
      'ContentType': instance.contentType,
      'MediaItems': instance.mediaItems.map((e) => e.toJson()).toList(),
    };
