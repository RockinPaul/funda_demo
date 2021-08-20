// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedItemDto _$FeedItemDtoFromJson(Map<String, dynamic> json) => FeedItemDto(
      adres: json['Adres'] as String?,
      foto: json['Foto'] as String?,
      id: json['Id'] as String?,
      koopprijs: json['Koopprijs'] as int?,
      postcode: json['Postcode'] as String?,
    );

Map<String, dynamic> _$FeedItemDtoToJson(FeedItemDto instance) =>
    <String, dynamic>{
      'Adres': instance.adres,
      'Foto': instance.foto,
      'Id': instance.id,
      'Koopprijs': instance.koopprijs,
      'Postcode': instance.postcode,
    };
