import 'package:json_annotation/json_annotation.dart';

part 'media_item.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class MediaItem {
  final int? category;
  final int? height;
  final int? width;
  final String? url;

  MediaItem(this.category, this.height, this.width, this.url);

  factory MediaItem.fromJson(Map<String, dynamic> json) =>
      _$MediaItemFromJson(json);

  Map<String, dynamic> toJson() => _$MediaItemToJson(this);
}

