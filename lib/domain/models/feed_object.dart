import 'package:funda_demo/domain/models/media.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed_object.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal, explicitToJson: true)
class FeedObject {
  final String? aangebodenSindsTekst;
  final String? aanmeldDatum;
  final dynamic aantalBeschikbaar;
  final int? aantalKamers;
  final dynamic aantalKavels;
  final String? aanvaarding;
  final String? adres;
  final int? afstand;
  final String? bronCode;
  final dynamic childrenObjects;
  final dynamic datumAanvaarding;
  final dynamic datumOndertekeningAkte;
  final String? foto;
  final String? fotoLarge;
  final String? fotoLargest;
  final String? fotoMedium;
  final String? fotoSecure;
  final dynamic gewijzigdDatum;
  final int? globalId;
  final String? groupByObjectType;
  final bool? heeft360GradenFoto;
  final bool? heeftBrochure;
  final bool? heeftOpenhuizenTopper;
  final bool? heeftOverbruggingsgrarantie;
  final bool? heeftPlattegrond;
  final bool? heeftTophuis;
  final bool? heeftVeiling;
  final bool? heeftVideo;
  final dynamic huurPrijsTot;
  final dynamic huurprijs;
  final dynamic huurprijsFormaat;
  final String? id;
  final dynamic inUnitsVanaf;
  final bool? indProjectObjectType;
  final dynamic indTransactieMakelaarTonen;
  final bool? isSearchable;
  final bool? isVerhuurd;
  final bool? isVerkocht;
  final bool? isVerkochtOfVerhuurd;
  final int? koopprijs;
  final String? koopprijsFormaat;
  final int? koopprijsTot;
  final String? land;
  final int? makelaarId;
  final String? makelaarNaam;
  final String? postcode;

  // Detail attributes
  final String? volledigeOmschrijving;

  @JsonKey(defaultValue: const [])
  final List<Media> media;

  FeedObject(
    this.aangebodenSindsTekst,
    this.aanmeldDatum,
    this.aantalBeschikbaar,
    this.aantalKamers,
    this.aantalKavels,
    this.aanvaarding,
    this.adres,
    this.afstand,
    this.bronCode,
    this.childrenObjects,
    this.datumAanvaarding,
    this.datumOndertekeningAkte,
    this.foto,
    this.fotoLarge,
    this.fotoLargest,
    this.fotoMedium,
    this.fotoSecure,
    this.gewijzigdDatum,
    this.globalId,
    this.groupByObjectType,
    this.heeft360GradenFoto,
    this.heeftBrochure,
    this.heeftOpenhuizenTopper,
    this.heeftOverbruggingsgrarantie,
    this.heeftPlattegrond,
    this.heeftTophuis,
    this.heeftVeiling,
    this.heeftVideo,
    this.huurPrijsTot,
    this.huurprijs,
    this.huurprijsFormaat,
    this.id,
    this.inUnitsVanaf,
    this.indProjectObjectType,
    this.indTransactieMakelaarTonen,
    this.isSearchable,
    this.isVerhuurd,
    this.isVerkocht,
    this.isVerkochtOfVerhuurd,
    this.koopprijs,
    this.koopprijsFormaat,
    this.koopprijsTot,
    this.land,
    this.makelaarId,
    this.makelaarNaam,
    this.postcode,
    this.volledigeOmschrijving,
    this.media,
  );

  factory FeedObject.fromJson(Map<String, dynamic> json) =>
      _$FeedObjectFromJson(json);

  Map<String, dynamic> toJson() => _$FeedObjectToJson(this);
}
