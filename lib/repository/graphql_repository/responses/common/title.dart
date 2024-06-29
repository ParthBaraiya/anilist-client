class MediaTitle {
  final String? romaji;
  final String? english;
  final String? native;
  final String? userPreferred;

  MediaTitle({
    this.romaji,
    this.english,
    this.native,
    this.userPreferred,
  });

  factory MediaTitle.fromJson(Map<String, dynamic> json) => MediaTitle(
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
