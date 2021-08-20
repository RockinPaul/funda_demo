import 'package:funda_demo/domain/models/feed.dart';
import 'package:funda_demo/domain/models/feed_item.dart';
import 'package:funda_demo/infrastructure/models/feed_item_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed_dto.g.dart';

// The top-level function allows us to move parsing and conversion
// to a background isolate via the compute() function:
// https://api.flutter.dev/flutter/foundation/compute-constant.html
FeedDto feedDtoFromJson(dynamic json) => _$FeedDtoFromJson(json);

@JsonSerializable(fieldRename: FieldRename.pascal, explicitToJson: true)
class FeedDto extends Feed {
  final int? totaalAantalObjecten;

  @JsonKey(defaultValue: const [])
  final List<FeedItemDto> objects;

  FeedDto(this.totaalAantalObjecten, this.objects);

  Map<String, dynamic> toJson() => _$FeedDtoToJson(this);

  @override
  List<FeedItem> get items => objects;

  @override
  int get itemsCount => totaalAantalObjecten ?? 0;
}
