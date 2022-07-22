import 'dart:convert';

List<Heroes> heroesFromJson(String str) =>
    List<Heroes>.from(json.decode(str).map((x) => Heroes.fromJson(x)));

String heroesToJson(List<Heroes> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Heroes {
  Heroes({
    required this.id,
    required this.name,
    required this.localizedName,
    required this.primaryAttr,
    required this.attackType,
    required this.roles,
  });

  int id;
  String name;
  String localizedName;
  String primaryAttr;
  String attackType;
  List<String> roles;

  factory Heroes.fromJson(Map<String, dynamic> json) => Heroes(
        id: json["id"],
        name: json["name"],
        localizedName: json["localized_name"],
        primaryAttr: json["primary_attr"],
        attackType: json["attack_type"],
        roles: List<String>.from(json["roles"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "localized_name": localizedName,
        "primary_attr": primaryAttr,
        "attack_type": attackType,
        "roles": List<dynamic>.from(roles.map((x) => x)),
      };
}
