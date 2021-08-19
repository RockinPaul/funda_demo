import 'package:funda_demo/domain/models/media.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed_object.g.dart';

// The top-level function allows us to move parsing and conversion
// to a background isolate via the compute() function:
// https://api.flutter.dev/flutter/foundation/compute-constant.html
FeedObject feedObjectFromJson(dynamic json) => _$FeedObjectFromJson(json);

@JsonSerializable(fieldRename: FieldRename.pascal, explicitToJson: true)
class FeedObject {
  final String? adres;
  final String? foto;
  final String? id;
  final int? koopprijs;
  final String? postcode;

  FeedObject({
    this.adres,
    this.foto,
    this.id,
    this.koopprijs,
    this.postcode,
  });

  factory FeedObject.fromJson(Map<String, dynamic> json) =>
      _$FeedObjectFromJson(json);

  Map<String, dynamic> toJson() => _$FeedObjectToJson(this);
}
