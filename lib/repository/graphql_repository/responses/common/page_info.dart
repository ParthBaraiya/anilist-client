class PageInfo {
  final bool? hasNextPage;

  PageInfo({
    this.hasNextPage,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        hasNextPage: json["hasNextPage"],
      );

  Map<String, dynamic> toJson() => {
        "hasNextPage": hasNextPage,
      };
}
