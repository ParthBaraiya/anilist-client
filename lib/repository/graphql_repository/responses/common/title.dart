class Title {
  final String? romaji;
  final String? english;
  final String? native;
  final String? userPreferred;

  Title({
    this.romaji,
    this.english,
    this.native,
    this.userPreferred,
  });

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        romaji: json["romaji"],
        english: json["english"],
        native: json["native"],
        userPreferred: json["userPreferred"],
      );

  Map<String, dynamic> toJson() => {
        "romaji": romaji,
        "english": english,
        "native": native,
        "userPreferred": userPreferred,
      };
}
