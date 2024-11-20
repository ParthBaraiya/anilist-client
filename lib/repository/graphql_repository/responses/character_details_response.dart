import 'package:anilist_client/repository/graphql_repository/responses/common/entity_image.dart';
import 'package:anilist_client/repository/graphql_repository/responses/enum/enums.dart';

class CharacterDetails {
  final int? id;
  final EntityImage? image;
  final CharacterRole role;

  CharacterDetails({
    this.id,
    this.image,
    this.role = CharacterRole.none,
  });

  factory CharacterDetails.fromJson(Map<String, dynamic> json) =>
      CharacterDetails(
        id: json["id"],
        image:
            json["image"] == null ? null : EntityImage.fromJson(json["image"]),
        role: CharacterRole.fromString('${json["role"]}'),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image?.toJson(),
        "role": '${role}',
      };
}
