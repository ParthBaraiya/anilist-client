class CoverImage {
  final String? _extraLarge;
  final String? _large;
  final String? _medium;
  final String? color;

  CoverImage({
    String? extraLarge,
    String? large,
    String? medium,
    this.color,
  })  : _extraLarge = extraLarge,
        _large = large,
        _medium = medium;

  String get medium => _medium ?? _large ?? _extraLarge ?? '';
  String get large => _large ?? _extraLarge ?? _medium ?? '';
  String get extraLarge => _extraLarge ?? _large ?? _medium ?? '';

  factory CoverImage.fromJson(Map<String, dynamic> json) => CoverImage(
        extraLarge: json["extraLarge"],
        large: json["large"],
        medium: json["medium"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "extraLarge": _extraLarge,
        "large": _large,
        "medium": _medium,
        "color": color,
      };
}
