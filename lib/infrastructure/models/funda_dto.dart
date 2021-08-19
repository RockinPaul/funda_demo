// To parse this JSON data, do
//
//     final fundaObject = fundaObjectFromJson(jsonString);

import 'dart:convert';

FundaDto fundaObjectFromJson(String str) => FundaDto.fromJson(json.decode(str));

String fundaObjectToJson(FundaDto data) => json.encode(data.toJson());

class FundaDto {
  FundaDto({
    required this.aangebodenSinds,
    required this.aangebodenSindsTekst,
    required this.aantalBadkamers,
    required this.aantalKamers,
    required this.aantalSlaapkamers,
    required this.aantalWoonlagen,
    required this.aanvaarding,
    required this.adres,
    required this.afgekochtDatum,
    required this.balkonDakterras,
    required this.bedrijfsruimteCombinatieObject,
    required this.bezichtingDagdelen,
    required this.bezichtingDagen,
    required this.bijdrageVve,
    required this.bijzonderheden,
    required this.bouwjaar,
    required this.bouwvorm,
    required this.bronCode,
    required this.contactpersoonEmail,
    required this.contactpersoonTelefoon,
    required this.cv,
    required this.datumOndertekeningAkte,
    required this.deeplink,
    required this.detailInfo,
    required this.eigendomsSituatie,
    required this.energielabel,
    required this.erfpachtBedrag,
    required this.garage,
    required this.garageIsolatie,
    required this.garageVoorzieningen,
    required this.gelegenOp,
    required this.gewijzigdDatum,
    required this.hoofdFoto,
    required this.hoofdFotoSecure,
    required this.hoofdTuinType,
    required this.id,
    required this.indBasisPlaatsing,
    required this.indFotos,
    required this.indIpix,
    required this.indOpenhuizenTopper,
    required this.indPdf,
    required this.indPlattegrond,
    required this.indTop,
    required this.indVeilingProduct,
    required this.indVideo,
    required this.inhoud,
    required this.internalId,
    required this.isIngetrokken,
    required this.isVerhuurd,
    required this.isVerkocht,
    required this.isolatie,
    required this.kenmerken,
    required this.kenmerkenKort,
    required this.kenmerkenTitel,
    required this.ligging,
    required this.mliUrl,
    required this.makelaar,
    required this.makelaarId,
    required this.makelaarTelefoon,
    required this.medeAanbieders,
    required this.media,
    required this.mediaFoto,
    required this.mobileUrl,
    required this.objectType,
    required this.objectTypeMetVoorvoegsel,
    required this.openHuizen,
    required this.perceelOppervlakte,
    required this.permanenteBewoning,
    required this.plaats,
    required this.postcode,
    required this.prijs,
    required this.prijsGeformatteerd,
    required this.project,
    required this.projectNaam,
    required this.publicatieDatum,
    required this.publicatieStatus,
    required this.schuurBerging,
    required this.schuurBergingIsolatie,
    required this.schuurBergingVoorzieningen,
    required this.scrambledId,
    required this.serviceKosten,
    required this.soortAanbod,
    required this.soortDak,
    required this.soortGarage,
    required this.soortParkeergelegenheid,
    required this.soortPlaatsing,
    required this.soortWoning,
    required this.titels,
    required this.toonBezichtigingMaken,
    required this.toonBrochureAanvraag,
    required this.toonMakelaarWoningaanbod,
    required this.toonReageren,
    required this.transactieAfmeldDatum,
    required this.transactieMakelaarId,
    required this.transactieMakelaarNaam,
    required this.tuinLigging,
    required this.typeProject,
    required this.url,
    required this.veiling,
    required this.verkoopStatus,
    required this.verwarming,
    required this.video,
    required this.volledigeOmschrijving,
    required this.voorzieningen,
    required this.wgs84X,
    required this.wgs84Y,
    required this.warmWater,
    required this.woonOppervlakte,
    required this.eersteHuurPrijs,
    required this.eersteHuurPrijsLang,
    required this.eersteKoopPrijs,
    required this.eersteKoopPrijsLang,
    required this.huurPrijs,
    required this.huurPrijsLang,
    required this.huurPrijsTot,
    required this.huurprijs,
    required this.huurprijsFormaat,
    required this.koopPrijs,
    required this.koopPrijsLang,
    required this.koopprijs,
    required this.koopprijsFormaat,
    required this.koopprijsTot,
    required this.shortUrl,
    required this.tuin,
    required this.veilingGeformatteerd,
  });

  String aangebodenSinds;
  String aangebodenSindsTekst;
  int aantalBadkamers;
  int aantalKamers;
  dynamic aantalSlaapkamers;
  String aantalWoonlagen;
  String aanvaarding;
  String adres;
  dynamic afgekochtDatum;
  dynamic balkonDakterras;
  dynamic bedrijfsruimteCombinatieObject;
  List<BezichtingDag> bezichtingDagdelen;
  List<BezichtingDag> bezichtingDagen;
  dynamic bijdrageVve;
  String bijzonderheden;
  String bouwjaar;
  String bouwvorm;
  String bronCode;
  dynamic contactpersoonEmail;
  dynamic contactpersoonTelefoon;
  String cv;
  dynamic datumOndertekeningAkte;
  dynamic deeplink;
  DetailInfo detailInfo;
  dynamic eigendomsSituatie;
  Energielabel energielabel;
  dynamic erfpachtBedrag;
  dynamic garage;
  dynamic garageIsolatie;
  dynamic garageVoorzieningen;
  dynamic gelegenOp;
  String gewijzigdDatum;
  String hoofdFoto;
  String hoofdFotoSecure;
  String hoofdTuinType;
  int id;
  bool indBasisPlaatsing;
  bool indFotos;
  bool indIpix;
  bool indOpenhuizenTopper;
  bool indPdf;
  bool indPlattegrond;
  bool indTop;
  bool indVeilingProduct;
  bool indVideo;
  int inhoud;
  String internalId;
  bool isIngetrokken;
  bool isVerhuurd;
  bool isVerkocht;
  String isolatie;
  List<KenmerkenKort> kenmerken;
  KenmerkenKort kenmerkenKort;
  dynamic kenmerkenTitel;
  String ligging;
  String mliUrl;
  String makelaar;
  int makelaarId;
  String makelaarTelefoon;
  List<dynamic> medeAanbieders;
  List<Media> media;
  List<String> mediaFoto;
  String mobileUrl;
  String objectType;
  String objectTypeMetVoorvoegsel;
  List<dynamic> openHuizen;
  int perceelOppervlakte;
  String permanenteBewoning;
  String plaats;
  String postcode;
  Prijs prijs;
  String prijsGeformatteerd;
  dynamic project;
  dynamic projectNaam;
  String publicatieDatum;
  int publicatieStatus;
  String schuurBerging;
  String schuurBergingIsolatie;
  String schuurBergingVoorzieningen;
  String scrambledId;
  int serviceKosten;
  int soortAanbod;
  String soortDak;
  String soortGarage;
  String soortParkeergelegenheid;
  int soortPlaatsing;
  String soortWoning;
  List<Titel> titels;
  bool toonBezichtigingMaken;
  bool toonBrochureAanvraag;
  bool toonMakelaarWoningaanbod;
  bool toonReageren;
  dynamic transactieAfmeldDatum;
  dynamic transactieMakelaarId;
  dynamic transactieMakelaarNaam;
  String tuinLigging;
  int typeProject;
  String url;
  Veiling veiling;
  String verkoopStatus;
  String verwarming;
  FundaObjectVideo video;
  String volledigeOmschrijving;
  String voorzieningen;
  double wgs84X;
  double wgs84Y;
  String warmWater;
  int woonOppervlakte;
  dynamic eersteHuurPrijs;
  dynamic eersteHuurPrijsLang;
  dynamic eersteKoopPrijs;
  dynamic eersteKoopPrijsLang;
  dynamic huurPrijs;
  dynamic huurPrijsLang;
  dynamic huurPrijsTot;
  dynamic huurprijs;
  dynamic huurprijsFormaat;
  int koopPrijs;
  String koopPrijsLang;
  int koopprijs;
  String koopprijsFormaat;
  dynamic koopprijsTot;
  String shortUrl;
  String tuin;
  dynamic veilingGeformatteerd;

  factory FundaDto.fromJson(Map<String, dynamic> json) => FundaDto(
    aangebodenSinds: json["AangebodenSinds"],
    aangebodenSindsTekst: json["AangebodenSindsTekst"],
    aantalBadkamers: json["AantalBadkamers"],
    aantalKamers: json["AantalKamers"],
    aantalSlaapkamers: json["AantalSlaapkamers"],
    aantalWoonlagen: json["AantalWoonlagen"],
    aanvaarding: json["Aanvaarding"],
    adres: json["Adres"],
    afgekochtDatum: json["AfgekochtDatum"],
    balkonDakterras: json["BalkonDakterras"],
    bedrijfsruimteCombinatieObject: json["BedrijfsruimteCombinatieObject"],
    bezichtingDagdelen: List<BezichtingDag>.from(json["BezichtingDagdelen"].map((x) => BezichtingDag.fromJson(x))),
    bezichtingDagen: List<BezichtingDag>.from(json["BezichtingDagen"].map((x) => BezichtingDag.fromJson(x))),
    bijdrageVve: json["BijdrageVVE"],
    bijzonderheden: json["Bijzonderheden"],
    bouwjaar: json["Bouwjaar"],
    bouwvorm: json["Bouwvorm"],
    bronCode: json["BronCode"],
    contactpersoonEmail: json["ContactpersoonEmail"],
    contactpersoonTelefoon: json["ContactpersoonTelefoon"],
    cv: json["Cv"],
    datumOndertekeningAkte: json["DatumOndertekeningAkte"],
    deeplink: json["Deeplink"],
    detailInfo: DetailInfo.fromJson(json["DetailInfo"]),
    eigendomsSituatie: json["EigendomsSituatie"],
    energielabel: Energielabel.fromJson(json["Energielabel"]),
    erfpachtBedrag: json["ErfpachtBedrag"],
    garage: json["Garage"],
    garageIsolatie: json["GarageIsolatie"],
    garageVoorzieningen: json["GarageVoorzieningen"],
    gelegenOp: json["GelegenOp"],
    gewijzigdDatum: json["GewijzigdDatum"],
    hoofdFoto: json["HoofdFoto"],
    hoofdFotoSecure: json["HoofdFotoSecure"],
    hoofdTuinType: json["HoofdTuinType"],
    id: json["Id"],
    indBasisPlaatsing: json["IndBasisPlaatsing"],
    indFotos: json["IndFotos"],
    indIpix: json["IndIpix"],
    indOpenhuizenTopper: json["IndOpenhuizenTopper"],
    indPdf: json["IndPDF"],
    indPlattegrond: json["IndPlattegrond"],
    indTop: json["IndTop"],
    indVeilingProduct: json["IndVeilingProduct"],
    indVideo: json["IndVideo"],
    inhoud: json["Inhoud"],
    internalId: json["InternalId"],
    isIngetrokken: json["IsIngetrokken"],
    isVerhuurd: json["IsVerhuurd"],
    isVerkocht: json["IsVerkocht"],
    isolatie: json["Isolatie"],
    kenmerken: List<KenmerkenKort>.from(json["Kenmerken"].map((x) => KenmerkenKort.fromJson(x))),
    kenmerkenKort: KenmerkenKort.fromJson(json["KenmerkenKort"]),
    kenmerkenTitel: json["KenmerkenTitel"],
    ligging: json["Ligging"],
    mliUrl: json["MLIUrl"],
    makelaar: json["Makelaar"],
    makelaarId: json["MakelaarId"],
    makelaarTelefoon: json["MakelaarTelefoon"],
    medeAanbieders: List<dynamic>.from(json["MedeAanbieders"].map((x) => x)),
    media: List<Media>.from(json["Media"].map((x) => Media.fromJson(x))),
    mediaFoto: List<String>.from(json["Media-Foto"].map((x) => x)),
    mobileUrl: json["MobileURL"],
    objectType: json["ObjectType"],
    objectTypeMetVoorvoegsel: json["ObjectTypeMetVoorvoegsel"],
    openHuizen: List<dynamic>.from(json["OpenHuizen"].map((x) => x)),
    perceelOppervlakte: json["PerceelOppervlakte"],
    permanenteBewoning: json["PermanenteBewoning"],
    plaats: json["Plaats"],
    postcode: json["Postcode"],
    prijs: Prijs.fromJson(json["Prijs"]),
    prijsGeformatteerd: json["PrijsGeformatteerd"],
    project: json["Project"],
    projectNaam: json["ProjectNaam"],
    publicatieDatum: json["PublicatieDatum"],
    publicatieStatus: json["PublicatieStatus"],
    schuurBerging: json["SchuurBerging"],
    schuurBergingIsolatie: json["SchuurBergingIsolatie"],
    schuurBergingVoorzieningen: json["SchuurBergingVoorzieningen"],
    scrambledId: json["ScrambledId"],
    serviceKosten: json["ServiceKosten"],
    soortAanbod: json["SoortAanbod"],
    soortDak: json["SoortDak"],
    soortGarage: json["SoortGarage"],
    soortParkeergelegenheid: json["SoortParkeergelegenheid"],
    soortPlaatsing: json["SoortPlaatsing"],
    soortWoning: json["SoortWoning"],
    titels: List<Titel>.from(json["Titels"].map((x) => Titel.fromJson(x))),
    toonBezichtigingMaken: json["ToonBezichtigingMaken"],
    toonBrochureAanvraag: json["ToonBrochureAanvraag"],
    toonMakelaarWoningaanbod: json["ToonMakelaarWoningaanbod"],
    toonReageren: json["ToonReageren"],
    transactieAfmeldDatum: json["TransactieAfmeldDatum"],
    transactieMakelaarId: json["TransactieMakelaarId"],
    transactieMakelaarNaam: json["TransactieMakelaarNaam"],
    tuinLigging: json["TuinLigging"],
    typeProject: json["TypeProject"],
    url: json["URL"],
    veiling: Veiling.fromJson(json["Veiling"]),
    verkoopStatus: json["VerkoopStatus"],
    verwarming: json["Verwarming"],
    video: FundaObjectVideo.fromJson(json["Video"]),
    volledigeOmschrijving: json["VolledigeOmschrijving"],
    voorzieningen: json["Voorzieningen"],
    wgs84X: json["WGS84_X"].toDouble(),
    wgs84Y: json["WGS84_Y"].toDouble(),
    warmWater: json["WarmWater"],
    woonOppervlakte: json["WoonOppervlakte"],
    eersteHuurPrijs: json["EersteHuurPrijs"],
    eersteHuurPrijsLang: json["EersteHuurPrijsLang"],
    eersteKoopPrijs: json["EersteKoopPrijs"],
    eersteKoopPrijsLang: json["EersteKoopPrijsLang"],
    huurPrijs: json["HuurPrijs"],
    huurPrijsLang: json["HuurPrijsLang"],
    huurPrijsTot: json["HuurPrijsTot"],
    huurprijs: json["Huurprijs"],
    huurprijsFormaat: json["HuurprijsFormaat"],
    koopPrijs: json["KoopPrijs"],
    koopPrijsLang: json["KoopPrijsLang"],
    koopprijs: json["Koopprijs"],
    koopprijsFormaat: json["KoopprijsFormaat"],
    koopprijsTot: json["KoopprijsTot"],
    shortUrl: json["ShortURL"],
    tuin: json["Tuin"],
    veilingGeformatteerd: json["VeilingGeformatteerd"],
  );

  Map<String, dynamic> toJson() => {
    "AangebodenSinds": aangebodenSinds,
    "AangebodenSindsTekst": aangebodenSindsTekst,
    "AantalBadkamers": aantalBadkamers,
    "AantalKamers": aantalKamers,
    "AantalSlaapkamers": aantalSlaapkamers,
    "AantalWoonlagen": aantalWoonlagen,
    "Aanvaarding": aanvaarding,
    "Adres": adres,
    "AfgekochtDatum": afgekochtDatum,
    "BalkonDakterras": balkonDakterras,
    "BedrijfsruimteCombinatieObject": bedrijfsruimteCombinatieObject,
    "BezichtingDagdelen": List<dynamic>.from(bezichtingDagdelen.map((x) => x.toJson())),
    "BezichtingDagen": List<dynamic>.from(bezichtingDagen.map((x) => x.toJson())),
    "BijdrageVVE": bijdrageVve,
    "Bijzonderheden": bijzonderheden,
    "Bouwjaar": bouwjaar,
    "Bouwvorm": bouwvorm,
    "BronCode": bronCode,
    "ContactpersoonEmail": contactpersoonEmail,
    "ContactpersoonTelefoon": contactpersoonTelefoon,
    "Cv": cv,
    "DatumOndertekeningAkte": datumOndertekeningAkte,
    "Deeplink": deeplink,
    "DetailInfo": detailInfo.toJson(),
    "EigendomsSituatie": eigendomsSituatie,
    "Energielabel": energielabel.toJson(),
    "ErfpachtBedrag": erfpachtBedrag,
    "Garage": garage,
    "GarageIsolatie": garageIsolatie,
    "GarageVoorzieningen": garageVoorzieningen,
    "GelegenOp": gelegenOp,
    "GewijzigdDatum": gewijzigdDatum,
    "HoofdFoto": hoofdFoto,
    "HoofdFotoSecure": hoofdFotoSecure,
    "HoofdTuinType": hoofdTuinType,
    "Id": id,
    "IndBasisPlaatsing": indBasisPlaatsing,
    "IndFotos": indFotos,
    "IndIpix": indIpix,
    "IndOpenhuizenTopper": indOpenhuizenTopper,
    "IndPDF": indPdf,
    "IndPlattegrond": indPlattegrond,
    "IndTop": indTop,
    "IndVeilingProduct": indVeilingProduct,
    "IndVideo": indVideo,
    "Inhoud": inhoud,
    "InternalId": internalId,
    "IsIngetrokken": isIngetrokken,
    "IsVerhuurd": isVerhuurd,
    "IsVerkocht": isVerkocht,
    "Isolatie": isolatie,
    "Kenmerken": List<dynamic>.from(kenmerken.map((x) => x.toJson())),
    "KenmerkenKort": kenmerkenKort.toJson(),
    "KenmerkenTitel": kenmerkenTitel,
    "Ligging": ligging,
    "MLIUrl": mliUrl,
    "Makelaar": makelaar,
    "MakelaarId": makelaarId,
    "MakelaarTelefoon": makelaarTelefoon,
    "MedeAanbieders": List<dynamic>.from(medeAanbieders.map((x) => x)),
    "Media": List<dynamic>.from(media.map((x) => x.toJson())),
    "Media-Foto": List<dynamic>.from(mediaFoto.map((x) => x)),
    "MobileURL": mobileUrl,
    "ObjectType": objectType,
    "ObjectTypeMetVoorvoegsel": objectTypeMetVoorvoegsel,
    "OpenHuizen": List<dynamic>.from(openHuizen.map((x) => x)),
    "PerceelOppervlakte": perceelOppervlakte,
    "PermanenteBewoning": permanenteBewoning,
    "Plaats": plaats,
    "Postcode": postcode,
    "Prijs": prijs.toJson(),
    "PrijsGeformatteerd": prijsGeformatteerd,
    "Project": project,
    "ProjectNaam": projectNaam,
    "PublicatieDatum": publicatieDatum,
    "PublicatieStatus": publicatieStatus,
    "SchuurBerging": schuurBerging,
    "SchuurBergingIsolatie": schuurBergingIsolatie,
    "SchuurBergingVoorzieningen": schuurBergingVoorzieningen,
    "ScrambledId": scrambledId,
    "ServiceKosten": serviceKosten,
    "SoortAanbod": soortAanbod,
    "SoortDak": soortDak,
    "SoortGarage": soortGarage,
    "SoortParkeergelegenheid": soortParkeergelegenheid,
    "SoortPlaatsing": soortPlaatsing,
    "SoortWoning": soortWoning,
    "Titels": List<dynamic>.from(titels.map((x) => x.toJson())),
    "ToonBezichtigingMaken": toonBezichtigingMaken,
    "ToonBrochureAanvraag": toonBrochureAanvraag,
    "ToonMakelaarWoningaanbod": toonMakelaarWoningaanbod,
    "ToonReageren": toonReageren,
    "TransactieAfmeldDatum": transactieAfmeldDatum,
    "TransactieMakelaarId": transactieMakelaarId,
    "TransactieMakelaarNaam": transactieMakelaarNaam,
    "TuinLigging": tuinLigging,
    "TypeProject": typeProject,
    "URL": url,
    "Veiling": veiling.toJson(),
    "VerkoopStatus": verkoopStatus,
    "Verwarming": verwarming,
    "Video": video.toJson(),
    "VolledigeOmschrijving": volledigeOmschrijving,
    "Voorzieningen": voorzieningen,
    "WGS84_X": wgs84X,
    "WGS84_Y": wgs84Y,
    "WarmWater": warmWater,
    "WoonOppervlakte": woonOppervlakte,
    "EersteHuurPrijs": eersteHuurPrijs,
    "EersteHuurPrijsLang": eersteHuurPrijsLang,
    "EersteKoopPrijs": eersteKoopPrijs,
    "EersteKoopPrijsLang": eersteKoopPrijsLang,
    "HuurPrijs": huurPrijs,
    "HuurPrijsLang": huurPrijsLang,
    "HuurPrijsTot": huurPrijsTot,
    "Huurprijs": huurprijs,
    "HuurprijsFormaat": huurprijsFormaat,
    "KoopPrijs": koopPrijs,
    "KoopPrijsLang": koopPrijsLang,
    "Koopprijs": koopprijs,
    "KoopprijsFormaat": koopprijsFormaat,
    "KoopprijsTot": koopprijsTot,
    "ShortURL": shortUrl,
    "Tuin": tuin,
    "VeilingGeformatteerd": veilingGeformatteerd,
  };
}

class BezichtingDag {
  BezichtingDag({
    required this.naam,
    required this.waarde,
  });

  String naam;
  String waarde;

  factory BezichtingDag.fromJson(Map<String, dynamic> json) => BezichtingDag(
    naam: json["Naam"],
    waarde: json["Waarde"],
  );

  Map<String, dynamic> toJson() => {
    "Naam": naam,
    "Waarde": waarde,
  };
}

class DetailInfo {
  DetailInfo({
    required this.hasPromotionLabel,
    required this.promotionLabelType,
    required this.ribbonColor,
    required this.ribbonText,
    required this.tagline,
  });

  bool hasPromotionLabel;
  int promotionLabelType;
  int ribbonColor;
  dynamic ribbonText;
  dynamic tagline;

  factory DetailInfo.fromJson(Map<String, dynamic> json) => DetailInfo(
    hasPromotionLabel: json["HasPromotionLabel"],
    promotionLabelType: json["PromotionLabelType"],
    ribbonColor: json["RibbonColor"],
    ribbonText: json["RibbonText"],
    tagline: json["Tagline"],
  );

  Map<String, dynamic> toJson() => {
    "HasPromotionLabel": hasPromotionLabel,
    "PromotionLabelType": promotionLabelType,
    "RibbonColor": ribbonColor,
    "RibbonText": ribbonText,
    "Tagline": tagline,
  };
}

class Energielabel {
  Energielabel({
    required this.definitief,
    required this.index,
    required this.label,
    required this.nietBeschikbaar,
    required this.nietVerplicht,
  });

  bool definitief;
  dynamic index;
  String label;
  bool nietBeschikbaar;
  bool nietVerplicht;

  factory Energielabel.fromJson(Map<String, dynamic> json) => Energielabel(
    definitief: json["Definitief"],
    index: json["Index"],
    label: json["Label"],
    nietBeschikbaar: json["NietBeschikbaar"],
    nietVerplicht: json["NietVerplicht"],
  );

  Map<String, dynamic> toJson() => {
    "Definitief": definitief,
    "Index": index,
    "Label": label,
    "NietBeschikbaar": nietBeschikbaar,
    "NietVerplicht": nietVerplicht,
  };
}

class KenmerkenKort {
  KenmerkenKort({
    required this.ad,
    required this.kenmerken,
    required this.lokNummer,
    required this.subKenmerk,
    required this.titel,
  });

  String ad;
  List<Kenmerken> kenmerken;
  int lokNummer;
  KenmerkenKort subKenmerk;
  String titel;

  factory KenmerkenKort.fromJson(Map<String, dynamic> json) => KenmerkenKort(
    ad: json["Ad"] == null ? null : json["Ad"],
    kenmerken: List<Kenmerken>.from(json["Kenmerken"].map((x) => Kenmerken.fromJson(x))),
    lokNummer: json["LokNummer"],
    subKenmerk: KenmerkenKort.fromJson(json["SubKenmerk"]),
    titel: json["Titel"] == null ? null : json["Titel"],
  );

  Map<String, dynamic> toJson() => {
    "Ad": ad == null ? null : ad,
    "Kenmerken": List<dynamic>.from(kenmerken.map((x) => x.toJson())),
    "LokNummer": lokNummer,
    "SubKenmerk": subKenmerk == null ? null : subKenmerk.toJson(),
    "Titel": titel == null ? null : titel,
  };
}

class Kenmerken {
  Kenmerken({
    required this.naam,
    required this.naamCss,
    required this.waarde,
    required this.waardeCss,
  });

  String naam;
  String naamCss;
  String waarde;
  String waardeCss;

  factory Kenmerken.fromJson(Map<String, dynamic> json) => Kenmerken(
    naam: json["Naam"],
    naamCss: json["NaamCss"] == null ? null : json["NaamCss"],
    waarde: json["Waarde"],
    waardeCss: json["WaardeCss"] == null ? null : json["WaardeCss"],
  );

  Map<String, dynamic> toJson() => {
    "Naam": naam,
    "NaamCss": naamCss == null ? null : naamCss,
    "Waarde": waarde,
    "WaardeCss": waardeCss == null ? null : waardeCss,
  };
}

class Media {
  Media({
    required this.categorie,
    required this.contentType,
    required this.id,
    required this.indexNumber,
    required this.mediaItems,
    required this.metadata,
    required this.omschrijving,
    required this.registratieVerplicht,
    required this.soort,
  });

  int categorie;
  int contentType;
  String id;
  int indexNumber;
  List<MediaItem> mediaItems;
  String metadata;
  String omschrijving;
  bool registratieVerplicht;
  int soort;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    categorie: json["Categorie"],
    contentType: json["ContentType"],
    id: json["Id"],
    indexNumber: json["IndexNumber"],
    mediaItems: List<MediaItem>.from(json["MediaItems"].map((x) => MediaItem.fromJson(x))),
    metadata: json["Metadata"] == null ? null : json["Metadata"],
    omschrijving: json["Omschrijving"] == null ? null : json["Omschrijving"],
    registratieVerplicht: json["RegistratieVerplicht"],
    soort: json["Soort"],
  );

  Map<String, dynamic> toJson() => {
    "Categorie": categorie,
    "ContentType": contentType,
    "Id": id,
    "IndexNumber": indexNumber,
    "MediaItems": List<dynamic>.from(mediaItems.map((x) => x.toJson())),
    "Metadata": metadata == null ? null : metadata,
    "Omschrijving": omschrijving == null ? null : omschrijving,
    "RegistratieVerplicht": registratieVerplicht,
    "Soort": soort,
  };
}

class MediaItem {
  MediaItem({
    required this.category,
    required this.height,
    required this.url,
    required this.urlSecure,
    required this.width,
  });

  int category;
  int height;
  String url;
  String urlSecure;
  int width;

  factory MediaItem.fromJson(Map<String, dynamic> json) => MediaItem(
    category: json["Category"],
    height: json["Height"],
    url: json["Url"],
    urlSecure: json["UrlSecure"] == null ? null : json["UrlSecure"],
    width: json["Width"],
  );

  Map<String, dynamic> toJson() => {
    "Category": category,
    "Height": height,
    "Url": url,
    "UrlSecure": urlSecure == null ? null : urlSecure,
    "Width": width,
  };
}

class Prijs {
  Prijs({
    required this.geenExtraKosten,
    required this.huurAbbreviation,
    required this.huurprijs,
    required this.huurprijsOpAanvraag,
    required this.huurprijsTot,
    required this.koopAbbreviation,
    required this.koopprijs,
    required this.koopprijsOpAanvraag,
    required this.koopprijsTot,
    required this.originelePrijs,
    required this.veilingText,
  });

  dynamic geenExtraKosten;
  String huurAbbreviation;
  dynamic huurprijs;
  String huurprijsOpAanvraag;
  dynamic huurprijsTot;
  String koopAbbreviation;
  int koopprijs;
  String koopprijsOpAanvraag;
  dynamic koopprijsTot;
  dynamic originelePrijs;
  String veilingText;

  factory Prijs.fromJson(Map<String, dynamic> json) => Prijs(
    geenExtraKosten: json["GeenExtraKosten"],
    huurAbbreviation: json["HuurAbbreviation"],
    huurprijs: json["Huurprijs"],
    huurprijsOpAanvraag: json["HuurprijsOpAanvraag"],
    huurprijsTot: json["HuurprijsTot"],
    koopAbbreviation: json["KoopAbbreviation"],
    koopprijs: json["Koopprijs"],
    koopprijsOpAanvraag: json["KoopprijsOpAanvraag"],
    koopprijsTot: json["KoopprijsTot"],
    originelePrijs: json["OriginelePrijs"],
    veilingText: json["VeilingText"],
  );

  Map<String, dynamic> toJson() => {
    "GeenExtraKosten": geenExtraKosten,
    "HuurAbbreviation": huurAbbreviation,
    "Huurprijs": huurprijs,
    "HuurprijsOpAanvraag": huurprijsOpAanvraag,
    "HuurprijsTot": huurprijsTot,
    "KoopAbbreviation": koopAbbreviation,
    "Koopprijs": koopprijs,
    "KoopprijsOpAanvraag": koopprijsOpAanvraag,
    "KoopprijsTot": koopprijsTot,
    "OriginelePrijs": originelePrijs,
    "VeilingText": veilingText,
  };
}

class Titel {
  Titel({
    required this.omschrijving,
    required this.pagina,
  });

  String omschrijving;
  int pagina;

  factory Titel.fromJson(Map<String, dynamic> json) => Titel(
    omschrijving: json["Omschrijving"],
    pagina: json["Pagina"],
  );

  Map<String, dynamic> toJson() => {
    "Omschrijving": omschrijving,
    "Pagina": pagina,
  };
}

class Veiling {
  Veiling({
    required this.eindDatum,
    required this.link,
    required this.startDatum,
    required this.veilingPartij,
  });

  dynamic eindDatum;
  dynamic link;
  dynamic startDatum;
  dynamic veilingPartij;

  factory Veiling.fromJson(Map<String, dynamic> json) => Veiling(
    eindDatum: json["EindDatum"],
    link: json["Link"],
    startDatum: json["StartDatum"],
    veilingPartij: json["VeilingPartij"],
  );

  Map<String, dynamic> toJson() => {
    "EindDatum": eindDatum,
    "Link": link,
    "StartDatum": startDatum,
    "VeilingPartij": veilingPartij,
  };
}

class FundaObjectVideo {
  FundaObjectVideo({
    required this.imageUrl,
    required this.quadiaVideoId,
    required this.thumbnailUrl,
    required this.videos,
  });

  String imageUrl;
  int quadiaVideoId;
  String thumbnailUrl;
  List<VideoElement> videos;

  factory FundaObjectVideo.fromJson(Map<String, dynamic> json) => FundaObjectVideo(
    imageUrl: json["ImageUrl"],
    quadiaVideoId: json["QuadiaVideoId"],
    thumbnailUrl: json["ThumbnailUrl"],
    videos: List<VideoElement>.from(json["Videos"].map((x) => VideoElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "ImageUrl": imageUrl,
    "QuadiaVideoId": quadiaVideoId,
    "ThumbnailUrl": thumbnailUrl,
    "Videos": List<dynamic>.from(videos.map((x) => x.toJson())),
  };
}

class VideoElement {
  VideoElement({
    required this.bitRate,
    required this.cdns,
    required this.hasAudio,
    required this.hasVideo,
    required this.isSource,
    required this.stream,
    required this.url,
  });

  int bitRate;
  List<Cdn> cdns;
  bool hasAudio;
  bool hasVideo;
  bool isSource;
  Stream stream;
  String url;

  factory VideoElement.fromJson(Map<String, dynamic> json) => VideoElement(
    bitRate: json["BitRate"],
    cdns: List<Cdn>.from(json["Cdns"].map((x) => Cdn.fromJson(x))),
    hasAudio: json["HasAudio"],
    hasVideo: json["HasVideo"],
    isSource: json["IsSource"],
    stream: Stream.fromJson(json["Stream"]),
    url: json["Url"],
  );

  Map<String, dynamic> toJson() => {
    "BitRate": bitRate,
    "Cdns": List<dynamic>.from(cdns.map((x) => x.toJson())),
    "HasAudio": hasAudio,
    "HasVideo": hasVideo,
    "IsSource": isSource,
    "Stream": stream.toJson(),
    "Url": url,
  };
}

class Cdn {
  Cdn({
    required this.deliveryType,
    required this.fileType,
    required this.mimeType,
    required this.sslUrl,
    required this.url,
  });

  String deliveryType;
  dynamic fileType;
  String mimeType;
  dynamic sslUrl;
  String url;

  factory Cdn.fromJson(Map<String, dynamic> json) => Cdn(
    deliveryType: json["DeliveryType"],
    fileType: json["FileType"],
    mimeType: json["MimeType"],
    sslUrl: json["SslUrl"],
    url: json["Url"],
  );

  Map<String, dynamic> toJson() => {
    "DeliveryType": deliveryType,
    "FileType": fileType,
    "MimeType": mimeType,
    "SslUrl": sslUrl,
    "Url": url,
  };
}

class Stream {
  Stream({
    required this.averageBitRate,
    required this.height,
    required this.width,
  });

  int averageBitRate;
  int height;
  int width;

  factory Stream.fromJson(Map<String, dynamic> json) => Stream(
    averageBitRate: json["AverageBitRate"],
    height: json["Height"],
    width: json["Width"],
  );

  Map<String, dynamic> toJson() => {
    "AverageBitRate": averageBitRate,
    "Height": height,
    "Width": width,
  };
}
