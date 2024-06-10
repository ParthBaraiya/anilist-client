import 'package:anilist_client/repository/graphql_repository/responses/enum/enums.dart';

class ExternalLink {
  final int? id;
  final String? url;
  final String? site;
  final int? siteId;
  final ExternalLinkType? type;
  final String? color;
  final String? icon;
  final String? notes;
  final String? language;

  ExternalLink({
    this.id,
    this.url,
    this.site,
    this.siteId,
    this.type,
    this.color,
    this.icon,
    this.notes,
    this.language,
  });

  factory ExternalLink.fromJson(Map<String, dynamic> json) => ExternalLink(
        id: json["id"],
        url: json["url"],
        site: json["site"],
        siteId: json["siteId"],
        type: ExternalLinkType.fromString('${json["type"]}'),
        color: json["color"],
        icon: json["icon"],
        notes: json["notes"],
        language: json["language"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "site": site,
        "siteId": siteId,
        "type": '$type',
        "color": color,
        "icon": icon,
        "notes": notes,
        "language": language,
      };
}
