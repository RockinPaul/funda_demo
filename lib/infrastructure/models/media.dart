import 'package:funda_demo/infrastructure/models/media_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal, explicitToJson: true)
class Media {
  final int? categorie;
  final int? contentType;

  @JsonKey(defaultValue: const [])
  final List<MediaItem> mediaItems;

  Media(
    this.categorie,
    this.contentType,
    this.mediaItems,
  );

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}
