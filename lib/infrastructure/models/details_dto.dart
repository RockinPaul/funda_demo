import 'package:funda_demo/domain/models/details.dart';
import 'package:funda_demo/infrastructure/models/media.dart';
import 'package:json_annotation/json_annotation.dart';

import 'media_item.dart';

part 'details_dto.g.dart';

// The top-level function allows us to move parsing and conversion
// to a background isolate via the compute() function:
// https://api.flutter.dev/flutter/foundation/compute-constant.html
DetailsDto detailsDtoFromJson(dynamic json) => _$DetailsDtoFromJson(json);

@JsonSerializable(fieldRename: FieldRename.pascal, explicitToJson: true)
class DetailsDto extends Details {
  final String? volledigeOmschrijving;

  @JsonKey(defaultValue: const [])
  final List<Media> media;

  DetailsDto(
    this.volledigeOmschrijving,
    this.media,
  );

  factory DetailsDto.fromJson(Map<String, dynamic> json) =>
      _$DetailsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsDtoToJson(this);

  @override
  String get description => volledigeOmschrijving ?? '';

  /// Extract links to images from Media object.
  @override
  List<String> get images {
    final filteredMedia = media.where((e) => e.contentType == 1 && e.categorie == 1);
    final mediaItems = <MediaItem>[];
    for (final m in filteredMedia) {
      mediaItems.addAll(m.mediaItems.where((e) => e.category == 4));
    }
    final links = List<String>.from(mediaItems.map((e) => e.url));
    return links;
  }
}
