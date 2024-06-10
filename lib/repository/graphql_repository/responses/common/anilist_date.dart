class AniListDate {
  final int? year;
  final int? month;
  final int? day;

  AniListDate({
    this.year,
    this.month,
    this.day,
  });

  factory AniListDate.fromJson(Map<String, dynamic> json) => AniListDate(
        year: json["year"],
        month: json["month"],
        day: json["day"],
      );

  Map<String, dynamic> toJson() => {
        "year": year,
        "month": month,
        "day": day,
      };
}
