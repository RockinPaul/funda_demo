// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaItem _$MediaItemFromJson(Map<String, dynamic> json) => MediaItem(
      json['Category'] as int?,
      json['Height'] as int?,
      json['Width'] as int?,
      json['Url'] as String?,
    );

Map<String, dynamic> _$MediaItemToJson(MediaItem instance) => <String, dynamic>{
      'Category': instance.category,
      'Height': instance.height,
      'Width': instance.width,
      'Url': instance.url,
    };
