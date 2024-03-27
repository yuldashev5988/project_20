class Country {
  String country;
  String code;
  String flagSVG;

  Country({required this.country, required this.code, required this.flagSVG});

  Country.fromJson(Map<String, dynamic> json) :
      country = json["country"],
      code = json["code"],
      flagSVG = json["flag"];

  Map <String, dynamic> toJson() => {
    "country" : country,
    "code" : code,
    "flag" : flagSVG,
  };
}
