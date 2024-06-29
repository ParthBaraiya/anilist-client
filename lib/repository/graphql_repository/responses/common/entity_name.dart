class EntityName {
  final String? first;
  final String? middle;
  final String? last;
  final String? full;
  final String? native;
  final String? userPreferred;

  EntityName({
    this.first,
    this.middle,
    this.last,
    this.full,
    this.native,
    this.userPreferred,
  });

  factory EntityName.fromJson(Map<String, dynamic> json) => EntityName(
        first: json["first"],
        middle: json["middle"],
        last: json["last"],
        full: json["full"],
        native: json["native"],
        userPreferred: json["userPreferred"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "middle": middle,
        "last": last,
        "full": full,
        "native": native,
        "userPreferred": userPreferred,
      };
}
