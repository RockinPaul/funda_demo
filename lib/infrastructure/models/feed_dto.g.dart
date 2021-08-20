// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedDto _$FeedDtoFromJson(Map<String, dynamic> json) => FeedDto(
      json['TotaalAantalObjecten'] as int?,
      (json['Objects'] as List<dynamic>?)
              ?.map((e) => FeedItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FeedDtoToJson(FeedDto instance) => <String, dynamic>{
      'TotaalAantalObjecten': instance.totaalAantalObjecten,
      'Objects': instance.objects.map((e) => e.toJson()).toList(),
    };
