import 'package:funda_demo/domain/models/feed_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed_item_dto.g.dart';

// The top-level function allows us to move parsing and conversion
// to a background isolate via the compute() function:
// https://api.flutter.dev/flutter/foundation/compute-constant.html
FeedItemDto feedObjectFromJson(dynamic json) => _$FeedItemDtoFromJson(json);

@JsonSerializable(fieldRename: FieldRename.pascal, explicitToJson: true)
class FeedItemDto extends FeedItem {
  final String? adres;
  final String? foto;
  final String? id;
  final int? koopprijs;
  final String? postcode;

  FeedItemDto({
    this.adres,
    this.foto,
    this.id,
    this.koopprijs,
    this.postcode,
  });

  factory FeedItemDto.fromJson(Map<String, dynamic> json) =>
      _$FeedItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FeedItemDtoToJson(this);

  @override
  String get address => adres ?? '';

  @override
  String get photo => foto ?? '';

  @override
  String get price => '${koopprijs ?? 0}';

  @override
  String get itemId => '${id ?? 0}';

  @override
  String get postal => postcode ?? '';
}
