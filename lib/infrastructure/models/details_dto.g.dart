// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailsDto _$DetailsDtoFromJson(Map<String, dynamic> json) => DetailsDto(
      json['VolledigeOmschrijving'] as String?,
      (json['Media'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DetailsDtoToJson(DetailsDto instance) =>
    <String, dynamic>{
      'VolledigeOmschrijving': instance.volledigeOmschrijving,
      'Media': instance.media.map((e) => e.toJson()).toList(),
    };
