import 'package:json_annotation/json_annotation.dart';

part 'paging.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Paging {
  final String? objectType;
  final String? omschrijving;
  final String? titel;

  Paging(this.objectType, this.omschrijving, this.titel);

  factory Paging.fromJson(Map<String, dynamic> json) =>
      _$PagingFromJson(json);

  Map<String, dynamic> toJson() => _$PagingToJson(this);
}

