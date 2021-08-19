import 'package:funda_demo/domain/models/media.dart';
import 'package:json_annotation/json_annotation.dart';

part 'details.g.dart';

// The top-level function allows us to move parsing and conversion
// to a background isolate via the compute() function:
// https://api.flutter.dev/flutter/foundation/compute-constant.html
Details detailsFromJson(dynamic json) => _$DetailsFromJson(json);

@JsonSerializable(fieldRename: FieldRename.pascal, explicitToJson: true)
class Details {
  final String? volledigeOmschrijving;

  @JsonKey(defaultValue: const [])
  final List<Media> media;

  Details(
    this.volledigeOmschrijving,
    this.media,
  );

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsToJson(this);
}
