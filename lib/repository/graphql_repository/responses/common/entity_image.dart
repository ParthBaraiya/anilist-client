class EntityImage {
  final String? large;
  final String? medium;

  EntityImage({
    this.large,
    this.medium,
  });

  factory EntityImage.fromJson(Map<String, dynamic> json) => EntityImage(
        large: json["large"],
        medium: json["medium"],
      );

  Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
      };
}
