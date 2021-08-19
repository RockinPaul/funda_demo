// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      json['AccountStatus'] as int?,
      json['EmailNotConfirmed'] as bool?,
      json['ValidationFailed'] as bool?,
      json['ValidationReport'],
      json['Website'] as int?,
      json['TotaalAantalObjecten'] as int?,
      Metadata.fromJson(json['Metadata'] as Map<String, dynamic>),
      Paging.fromJson(json['Paging'] as Map<String, dynamic>),
      (json['Objects'] as List<dynamic>?)
              ?.map((e) => FeedObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'AccountStatus': instance.accountStatus,
      'EmailNotConfirmed': instance.emailNotConfirmed,
      'ValidationFailed': instance.validationFailed,
      'ValidationReport': instance.validationReport,
      'Website': instance.website,
      'TotaalAantalObjecten': instance.totaalAantalObjecten,
      'Metadata': instance.metadata.toJson(),
      'Paging': instance.paging.toJson(),
      'Objects': instance.objects.map((e) => e.toJson()).toList(),
    };
