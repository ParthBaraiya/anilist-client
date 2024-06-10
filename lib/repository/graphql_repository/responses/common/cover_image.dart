class CoverImage {
  final String? extraLarge;
  final String? large;
  final String? medium;
  final String? color;

  CoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
  });

  factory CoverImage.fromJson(Map<String, dynamic> json) => CoverImage(
        extraLarge: json["extraLarge"],
        large: json["large"],
        medium: json["medium"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "extraLarge": extraLarge,
        "large": large,
        "medium": medium,
        "color": color,
      };
}
