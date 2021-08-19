// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedObject _$FeedObjectFromJson(Map<String, dynamic> json) => FeedObject(
      adres: json['Adres'] as String?,
      foto: json['Foto'] as String?,
      id: json['Id'] as String?,
      koopprijs: json['Koopprijs'] as int?,
      postcode: json['Postcode'] as String?,
    );

Map<String, dynamic> _$FeedObjectToJson(FeedObject instance) =>
    <String, dynamic>{
      'Adres': instance.adres,
      'Foto': instance.foto,
      'Id': instance.id,
      'Koopprijs': instance.koopprijs,
      'Postcode': instance.postcode,
    };
