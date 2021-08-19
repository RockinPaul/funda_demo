import 'package:json_annotation/json_annotation.dart';

part 'metadata.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Metadata {
  final String? objectType;
  final String? omschrijving;
  final String? titel;

  Metadata(this.objectType, this.omschrijving, this.titel);

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}

