import 'dart:convert';

class CatModel {
  CatModel({
    required this.catList,
  });

  List<CatList> catList;

  factory CatModel.fromRawJson(String str) => CatModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CatModel.fromJson(Map<String, dynamic> json) =>
      CatModel(
    catList: List<CatList>.from(json["catList"].map((x) => CatList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "catList": List<dynamic>.from(catList.map((x) => x.toJson())),
  };
}

class CatList {
  CatList({
    required this.weight,
    required this.id,
    required this.name,
    required this.cfaUrl,
    required this.vetstreetUrl,
    required this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    required this.lap,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.catFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.bidability,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
    required this.image,
  });

  Weight weight;
  String id;
  String name;
  String cfaUrl;
  String vetstreetUrl;
  String vcahospitalsUrl;
  String temperament;
  String origin;
  String countryCodes;
  String countryCode;
  String description;
  String lifeSpan;
  int indoor;
  int lap;
  int adaptability;
  int affectionLevel;
  int childFriendly;
  int catFriendly;
  int dogFriendly;
  int energyLevel;
  int grooming;
  int healthIssues;
  int intelligence;
  int sheddingLevel;
  int socialNeeds;
  int strangerFriendly;
  int vocalisation;
  int bidability;
  int experimental;
  int hairless;
  int natural;
  int rare;
  int rex;
  int suppressedTail;
  int shortLegs;
  String wikipediaUrl;
  int hypoallergenic;
  String referenceImageId;
  Image image;

  factory CatList.fromRawJson(String str) => CatList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CatList.fromJson(Map<String, dynamic> json) => CatList(
    weight: Weight.fromJson(json["weight"]),
    id: json["id"],
    name: json["name"],
    cfaUrl: json["cfa_url"],
    vetstreetUrl: json["vetstreet_url"],
    vcahospitalsUrl: json["vcahospitals_url"],
    temperament: json["temperament"],
    origin: json["origin"],
    countryCodes: json["country_codes"],
    countryCode: json["country_code"],
    description: json["description"],
    lifeSpan: json["life_span"],
    indoor: json["indoor"],
    lap: json["lap"],
    adaptability: json["adaptability"],
    affectionLevel: json["affection_level"],
    childFriendly: json["child_friendly"],
    catFriendly: json["cat_friendly"],
    dogFriendly: json["dog_friendly"],
    energyLevel: json["energy_level"],
    grooming: json["grooming"],
    healthIssues: json["health_issues"],
    intelligence: json["intelligence"],
    sheddingLevel: json["shedding_level"],
    socialNeeds: json["social_needs"],
    strangerFriendly: json["stranger_friendly"],
    vocalisation: json["vocalisation"],
    bidability: json["bidability"],
    experimental: json["experimental"],
    hairless: json["hairless"],
    natural: json["natural"],
    rare: json["rare"],
    rex: json["rex"],
    suppressedTail: json["suppressed_tail"],
    shortLegs: json["short_legs"],
    wikipediaUrl: json["wikipedia_url"],
    hypoallergenic: json["hypoallergenic"],
    referenceImageId: json["reference_image_id"],
    image: Image.fromJson(json["image"]),
  );

  Map<String, dynamic> toJson() => {
    "weight": weight.toJson(),
    "id": id,
    "name": name,
    "cfa_url": cfaUrl,
    "vetstreet_url": vetstreetUrl,
    "vcahospitals_url": vcahospitalsUrl,
    "temperament": temperament,
    "origin": origin,
    "country_codes": countryCodes,
    "country_code": countryCode,
    "description": description,
    "life_span": lifeSpan,
    "indoor": indoor,
    "lap": lap,
    "adaptability": adaptability,
    "affection_level": affectionLevel,
    "child_friendly": childFriendly,
    "cat_friendly": catFriendly,
    "dog_friendly": dogFriendly,
    "energy_level": energyLevel,
    "grooming": grooming,
    "health_issues": healthIssues,
    "intelligence": intelligence,
    "shedding_level": sheddingLevel,
    "social_needs": socialNeeds,
    "stranger_friendly": strangerFriendly,
    "vocalisation": vocalisation,
    "bidability": bidability,
    "experimental": experimental,
    "hairless": hairless,
    "natural": natural,
    "rare": rare,
    "rex": rex,
    "suppressed_tail": suppressedTail,
    "short_legs": shortLegs,
    "wikipedia_url": wikipediaUrl,
    "hypoallergenic": hypoallergenic,
    "reference_image_id": referenceImageId,
    "image": image.toJson(),
  };
}

class Image {
  Image({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
  });

  String id;
  int width;
  int height;
  String url;

  factory Image.fromRawJson(String str) => Image.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    width: json["width"],
    height: json["height"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "width": width,
    "height": height,
    "url": url,
  };
}

class Weight {
  Weight({
    required this.imperial,
    required this.metric,
  });

  String imperial;
  String metric;

  factory Weight.fromRawJson(String str) => Weight.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Weight.fromJson(Map<String, dynamic> json) => Weight(
    imperial: json["imperial"],
    metric: json["metric"],
  );

  Map<String, dynamic> toJson() => {
    "imperial": imperial,
    "metric": metric,
  };
}
