import 'package:funda_demo/domain/models/feed_object.dart';
import 'package:funda_demo/domain/models/metadata.dart';
import 'package:funda_demo/domain/models/paging.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed.g.dart';

// The top-level function allows us to move parsing and conversion
// to a background isolate via the compute() function:
// https://api.flutter.dev/flutter/foundation/compute-constant.html
Feed feedFromJson(dynamic json) => _$FeedFromJson(json);

@JsonSerializable(fieldRename: FieldRename.pascal, explicitToJson: true)
class Feed {
  final int? accountStatus;
  final bool? emailNotConfirmed;
  final bool? validationFailed;
  final dynamic validationReport;
  final int? website;
  final int? totaalAantalObjecten;
  final Metadata metadata;
  final Paging paging;

  @JsonKey(defaultValue: const [])
  final List<FeedObject> objects;

  Feed(
    this.accountStatus,
    this.emailNotConfirmed,
    this.validationFailed,
    this.validationReport,
    this.website,
    this.totaalAantalObjecten,
    this.metadata,
    this.paging,
    this.objects,
  );

  Map<String, dynamic> toJson() => _$FeedToJson(this);
}
