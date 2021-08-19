// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Details _$DetailsFromJson(Map<String, dynamic> json) => Details(
      json['VolledigeOmschrijving'] as String?,
      (json['Media'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DetailsToJson(Details instance) => <String, dynamic>{
      'VolledigeOmschrijving': instance.volledigeOmschrijving,
      'Media': instance.media.map((e) => e.toJson()).toList(),
    };
